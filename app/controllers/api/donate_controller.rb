module Api
  class DonateController < ApplicationController

    #the create function corresponds to the HTTP POST request. This function performs a donation to the given campaign (via campaign ID)
    def create
      user = User.find_by_email(params[:user_email])

      if !user # if not, then create the user
        user = User.new({
                             name: params[:user_name],
                             email: params[:user_email]
                         })
        unless user.valid? && user.save
          error(user.errors.full_messages)
        end
      end
      @campaign = Campaign.find(params[:campaign_id])
      @user_id = user.id


      #create the payment object
      payment = Payment.new({
                                 campaign_id: params[:campaign_id],
                                 payer_id: @user_id,
                                 wepay_credit_card_id: params[:credit_card_id],
                                 amount: params[:amount],
                             })
      #call the WEPAY /checkout/create API call to actually create the checkout and store it
      response = WEPAY.call("/checkout/create", @campaign.user.wepay_access_token, {
                                                  account_id: @campaign.user.wepay_account_id,
                                                  short_description: "Donation",
                                                  type: "DONATION",
                                                  amount: params[:amount],
                                                  fee_payer: "payer",
                                                  payment_method_type: "credit_card",
                                                  payment_method_id: payment.wepay_credit_card_id,
                                                  callback_uri: payment.callback_uri})
      if response["error"]
        throw response["error_description"]
      end
      payment.state = response["state"]
      payment.wepay_checkout_id = response["checkout_id"]
      payment.wepay_fee = response["fee"]

      #if the payment is valid and saved, then update the campaign progress (how much money is donated towards the campaign)
      if payment.valid? && payment.save
        @campaign.update_amount_donated
        render json: response, status: 201
      end

    end
   private
    def payment_params
      params.require(:payment).permit(:campaign_id, :user_email, :user_name, :credit_card_id, :amount)
    end

  end
end
