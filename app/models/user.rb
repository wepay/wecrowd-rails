require 'bcrypt'

class User < ActiveRecord::Base
  
  validates :email, :presence => true
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :format => { :with => /.+@.+\..+/, :message => " is invalid" }
  
  has_one :campaign
  
  acts_as_paranoid # use the paranoia gem to handle user deletion
  
  include BCrypt # use bcrypt for password hashing
  
  def password
    @password ||= Password.new(password_hash)
  end
  
  def password=(new_pw)
    @password = Password.create(new_pw)
    self.password_hash = @password
  end
  
  def has_password?
    !(self.password_hash.nil? || self.password_hash.empty?)
  end
  
  def self.authenticate(email, test_password)
    user = User.find_by_email(email)
    if user && user.password_hash.present?
      (user.password == test_password ? user : false)
    else
      false
    end
  end
  
  def self.authenticate_by_token(id, token)
    user = User.find_by_id(id)
    user ? (Digest::SHA2.hexdigest(user.hash) == token ? user : false) : false
  end
  
  # this is a 'secret' hash that can be used to identify a user
  # useful for identifying a user coming from an email
  def hash
    Digest::SHA2.hexdigest(self.id.to_s + self.password_hash.to_s + self.email.to_s).slice(0,10)
  end
end
