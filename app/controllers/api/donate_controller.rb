  module Api
    class DonateController < ApplicationController

      #the create function corresponds to the HTTP POST request. This function performs a donation to the given campaign (via campaign ID)
      def create

        campaign_id = params[:campaign_id]
        user_email = params[:user_email]
        user_name = params[:user_name]
        credit_card_id = params[:credit_card_id]
        amount = params[:amount]
        if(amount>1)
        user = User.find_by_email(user_email)

        if !user # if not, then create the user
          user = User.new({
                               name: user_name,
                               email: user_email
                           })
          unless user.valid? && user.save
            render json: user_invalid_error
          end
        end

        @campaign = Campaign.find_by_id(campaign_id)
        @user_id = user.id
        if(@campaign!=nil)
          #create the payment object
          payment = Payment.new({
                                   campaign_id: campaign_id,
                                   payer_id: @user_id,
                                   wepay_credit_card_id: credit_card_id,
                                   amount: amount,
                               })
          #call the WEPAY /checkout/create API call to actually create the checkout and store it
          response = WEPAY.call("/checkout/create", @campaign.user.wepay_access_token, {
                                                    account_id: @campaign.user.wepay_account_id,
                                                    short_description: "Donation",
                                                    type: "DONATION",
                                                    amount: amount,
                                                    fee_payer: "payer",
                                                    payment_method_type: "credit_card",
                                                    payment_method_id: payment.wepay_credit_card_id,
                                                    callback_uri: payment.callback_uri})
          if response["error"]
            render json: wepay_checkout_create_error
          end
          payment.state = response["state"]
          payment.wepay_checkout_id = response["checkout_id"]
          payment.wepay_fee = response["fee"]

          #if the payment is valid and saved, then update the campaign progress (how much money is donated towards the campaign)
          if payment.valid? && payment.save
            @campaign.update_amount_donated
            render json: {"checkout_id" => response['checkout_id']}, status: 201
          else
            render json: payment_invalid_error
          end
        else
          render json: campaign_does_not_exist_error
        end
        else
          render json: donation_amount_error
        end
      end

      def index
        render json: only_post_error
      end

      def new
        render json: only_post_error
      end

      def show
        render json: only_post_error
      end

      def edit
        render json: only_post_error
      end

      def update
        render json: only_post_error
      end

      def destroy
        render json: only_post_error
      end


     private
      def payment_params
        params.require(:payment).permit(:campaign_id, :user_email, :user_name, :credit_card_id, :amount)
      end

    end
  end
