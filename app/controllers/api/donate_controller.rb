  module Api
    class DonateController < ApplicationController

      #the create function corresponds to the HTTP POST request. This function performs a donation to the given campaign (via campaign ID)
      def create

        campaign_id = params[:campaign_id]
        credit_card_id = params[:credit_card_id]
        amount = params[:amount]

        #testing
        campaign = Campaign.find_by_id(campaign_id)
        user_id = campaign.user_id
        if(amount>1)
          if(campaign!=nil)
            #create the payment object
            payment = Payment.new({
                                      campaign_id: campaign_id,
                                      payer_id: user_id,
                                      wepay_credit_card_id: credit_card_id,
                                      amount: amount,
                                  })
            if !payment.valid?
              render json: error(payment.errors.full_messages)
            end
            if payment.valid? && payment.create_checkout && payment.save
              render json: {"checkout_id" => payment["wepay_checkout_id"]}
            else
              render json: payment_invalid_error
            end
          end
        end
      end


      def index
        render json: only_post_error, :status => 404
      end

      def new
        render json: only_post_error, :status => 404
      end

      def show
        render json: only_post_error, :status => 404
      end

      def edit
        render json: only_post_error, :status => 404
      end

      def update
        render json: only_post_error, :status => 404
      end

      def destroy
        render json: only_post_error, :status => 404
      end


     #private
      def payment_params
        params.require(:payment).permit(:campaign_id, :credit_card_id, :amount)
      end

    end
    end

