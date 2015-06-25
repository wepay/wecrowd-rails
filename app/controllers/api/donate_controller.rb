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
        params.require(:payment).permit(:campaign_id, :user_email, :user_name, :credit_card_id, :amount)
      end

    end
    end

