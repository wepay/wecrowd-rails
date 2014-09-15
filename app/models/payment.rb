class Payment < ActiveRecord::Base
  belongs_to :payer, :class_name => "User"
  belongs_to :campaign
  
  monetize :amount_cents
  monetize :app_fee_cents
  monetize :wepay_fee_cents
  
  acts_as_paranoid # use the paranoia gem to handle user deletion
  
  def self.create(credit_card_id, amount, user, campaign)
    # create the checkout
    response = WEPAY.call("/checkout/create", campaign.user.wepay_access_token, {
      account_id: campaign.user.wepay_account_id,
      short_description: "Donation to #{campaign.name}",
      type: "DONATION",
      amount: amount,
      fee_payer: "payer",
      payment_method_type: "credit_card",
      payment_method_id: credit_card_id
    })
    if response["error"]
      throw response["error_description"]
    end
    payment = Payment.new({
      campaign_id: campaign.id,
      payer_id: user.id,
      wepay_checkout_id: response["checkout_id"],
      wepay_credit_card_id: credit_card_id,
      amount: amount,
      wepay_fee: response["fee"],
      app_fee: 0
    })
  end
end
