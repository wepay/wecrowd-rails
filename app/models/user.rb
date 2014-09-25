require 'bcrypt'

class User < ActiveRecord::Base
  
  validates :name,  :presence => true
  validates :email, :presence => true
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :format => { :with => /.+@.+\..+/, :message => " is invalid" }
  
  # each user can have many donation campaigns
  has_many :campaigns
  has_many :payments, :foreign_key => :payer_id
  
  acts_as_paranoid # use the paranoia gem to handle user deletion
  
  include BCrypt # use bcrypt for password hashing
  
  ROLE_DEFAILT  = 0x00;
  ROLE_PAYER    = 0x01;
  ROLE_MERCHANT = 0x02;
  ROLE_ADMIN    = 0x04;
  
  STATE_PENDING    = "pending"
  STATE_REGISTERED = "registered"
  STATE_DELETED    = "deleted"
  
  # @user.password always returns a bcrypt password object
  def password
    @password ||= Password.new(password_hash)
  end
  
  # set the user's password using bcrypt
  def password=(new_pw)
    @password = Password.create(new_pw)
    self.password_hash = @password
  end
  
  def has_password?
    !(self.password_hash.nil? || self.password_hash.empty?)
  end
  
  # check to see if the user-provided password is correct
  def self.authenticate(email, test_password)
    user = User.find_by_email(email)
    if user && user.password_hash.present?
      (user.password == test_password ? user : false)
    else
      false
    end
  end
  
  # use the authentication cookie to authenticate the user
  def self.authenticate_by_token(id, token)
    user = User.find_by_id(id)
    user ? (Digest::SHA2.hexdigest(user.hash) == token ? user : false) : false
  end
  
  # this is a 'secret' hash that can be used to identify a user
  # useful for identifying a user coming from an email
  def hash
    Digest::SHA2.hexdigest(self.id.to_s + self.password_hash.to_s + self.email.to_s).slice(0,10)
  end
  
  def has_access_token?
    self.wepay_access_token.present?
  end
  
  def has_wepay_account?
    self.wepay_account_id.present?
  end
  
  # register the user on WePay using the /user/register call
  def register_on_wepay(ip, user_agent)
    # if we already have an access_token for this user, then we don't need to make this call
    if self.has_access_token? then return true end
    # get the first and last name by splitting on the first space
    split_name = self.name.split(" ", 2)
    response = WEPAY.call("/user/register", nil, {
      client_id: WEPAY_CONFIG[:client_id],
      client_secret: WEPAY_CONFIG[:client_secret],
      email: self.email,
      first_name: split_name[0],
      last_name: split_name[1],
      scope: 'manage_accounts,collect_payments,view_user,manage_subscriptions,preapprove_payments,send_money',
      original_ip: ip,
      original_device: user_agent,
      tos_acceptance_time: Time.now.to_i,
      callback_uri: self.callback_uri,
      redirect_uri: self.redirect_uri
    })
    if response['error'].present?
      raise response['error_description']
    end
    self.wepay_access_token = response['access_token']
    self.wepay_user_id      = response['user_id']
    self.save
  end
  
  # create a WePay account for the user
  def create_wepay_account
    # if we don't have an access_token for this user, then we cannot make this call
    if self.has_wepay_account? then return false end
    # make the /account/create call
    response = WEPAY.call("/account/create", self.wepay_access_token, {
      name: self.campaign.name,
      description: self.campaign.description,
      type: self.campaign.account_type
    })
    if response['error'].present?
      raise response['error_description']
    end
    self.wepay_account_id   = response['account_id']
    self.save
  end
  
  def get_wepay_user
    WEPAY.call('/user', self.wepay_access_token, {})
  end
  
  # resend the WePay registration confirmation email
  # so the user can confirm that they want this app to register them on WePay
  def resend_confirmation_email
    WEPAY.call('/user/resend_confirmation', self.wepay_access_token, {})
  end
  
  def get_wepay_account
    WEPAY.call('/account', self.wepay_access_token, {
      account_id: self.wepay_account_id
    })
  end
  
  def get_wepay_account_update_uri
    WEPAY.call('/account/get_update_uri', self.wepay_access_token, {
      account_id: self.wepay_account_id,
      mode: :iframe
    })
  end
  
  def handle_ipn
    response = self.get_wepay_user
    if response["error"]
      raise response
    end
    self.state = response["state"]
    self.save
  end
  
  def callback_uri
    Rails.application.secrets.host + "/user/ipn/#{self.id}"
  end
  
  def redirect_uri
    Rails.application.secrets.host + "/user/view/#{self.id}"
  end
  
  def campaign
    self.campaigns.first
  end
  
  def has_role?(role)
    self.role & role != 0
  end
  
  def is_admin?
    self.has_role?(ROLE_ADMIN)
  end
  
  def add_role(role)
    self.role = self.role | role
  end
  
  def role
    super || ROLE_DEFAULT
  end
  
  
end
