class Payment < ActiveRecord::Base
  belongs_to :payer, :class_name => "User"
  belongs_to :campaign
  
  monetize :amount_cents, :numericality => { :greater_than => 0 }
  monetize :app_fee_cents, :allow_nil => true
  monetize :wepay_fee_cents, :allow_nil => true
  
  acts_as_paranoid # use the paranoia gem to handle user deletion
  
  # make the /checkout/create call to immediately charge the credit card associated with this payment
  def create_checkout
    response = WEPAY.call("/checkout/create", self.campaign.user.wepay_access_token, {
      account_id: self.campaign.user.wepay_account_id,
      short_description: "Donation to #{self.campaign.name}",
      type: "DONATION",
      amount: self.amount.to_s,
      fee_payer: "payer",
      payment_method_type: "credit_card",
      payment_method_id: self.wepay_credit_card_id
    })
    if response["error"]
      throw response["error_description"]
    end
    self.wepay_checkout_id = response["checkout_id"];
    self.wepay_fee = response["fee"]
    self
  end
  
  def payer_name
    self.payer.present? ? self.payer.name : ''
  end
  
  def payer_email
    self.payer.present? ? self.payer.email : ''
  end
end
