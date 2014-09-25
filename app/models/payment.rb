class Payment < ActiveRecord::Base
  belongs_to :payer, :class_name => "User"
  belongs_to :campaign
  
  monetize :amount_cents, :numericality => { :greater_than => 0 }
  monetize :app_fee_cents, :allow_nil => true
  monetize :wepay_fee_cents, :allow_nil => true
  
  acts_as_paranoid # use the paranoia gem to handle user deletion
  
  STATE_NEW         = 'new'
  STATE_AUTHORIZED  = 'authorized'
  STATE_RESERVED    = 'reserved'
  STATE_CAPTURED    = 'captured'
  STATE_CANCELLED   = 'cancelled'
  STATE_REFUNDED    = 'refunded'
  STATE_CHARGEBACK  = 'charged back'
  STATE_FAILED      = 'failed'
  STATE_EXPIRED     = 'expired'
  
  # make the /checkout/create call to immediately charge the credit card associated with this payment
  def create_checkout
    response = WEPAY.call("/checkout/create", self.campaign.user.wepay_access_token, {
      account_id: self.campaign.user.wepay_account_id,
      short_description: "Donation to #{self.campaign.name}",
      type: "DONATION",
      amount: self.amount.to_s,
      fee_payer: "payer",
      payment_method_type: "credit_card",
      payment_method_id: self.wepay_credit_card_id,
      callback_uri: self.callback_uri
    })
    if response["error"]
      throw response["error_description"]
    end
    self.state = response["state"]
    self.wepay_checkout_id = response["checkout_id"];
    self.wepay_fee = response["fee"]
    self
  end
  
  def handle_ipn(checkout_id)
    response = WEPAY.call("/checkout", self.campaign.user.wepay_access_token, { checkout_id: checkout_id })
    if response["error"]
      throw response
    end
    if !self.payer_id && response["payer_email"]
      payer = User.with_deleted.find_by_email(response["payer_email"]) || User.new({ name: response["payer_name"], email: response["payer_email"] })
      unless payer.valid? && payer.save
        raise "IPN Error: Unable to save payer: #{payer.errors.full_messages}"
      end
      self.payer_id = payer.id
    end
    self.wepay_fee = response["fee"]
    self.app_fee = response["app_fee"]
    self.amount = response["amount"]
    self.state = response["state"]
    self.save
    
    self.campaign.update_amount_donated
  end
  
  def payer_name
    self.payer.present? ? self.payer.name : ''
  end
  
  def payer_email
    self.payer.present? ? self.payer.email : ''
  end
  
  def total_fee
    self.wepay_fee + self.app_fee
  end
  
  def callback_uri
    Rails.application.secrets.host + "/campaign/ipn/#{self.campaign_id}"
  end
end
