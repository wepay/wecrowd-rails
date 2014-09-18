class Campaign < ActiveRecord::Base
  belongs_to :user
  has_many :payments
  
  validates :name, :presence => true
  validates :description, :presence => true
  validates :goal, :numericality => { :greater_than => 0 }
  
  # use the money-rails gem to automatically convert the goal_cents column into a Money object
  # this Money object will be accessible via the goal property on all Campaign objects
  monetize :goal_cents
  monetize :amount_donated_cents
  
  acts_as_paranoid # use the paranoia gem to handle user deletion
  
  def featured?
    self.featured.to_i > 0
  end
  
  def feature
    self.featured = true
  end
  
  def unfeature
    self.featured = false
  end
  
  STATE_NEW         = 'new'
   STATE_AUTHORIZED  = 'authorized'
   STATE_RESERVED    = 'reserved'
   STATE_CAPTURED     = 'captured'
   STATE_CANCELLED   = 'cancelled'
   STATE_REFUNDED    = 'refunded'
   STATE_CHARGEBACK  = 'charged back'
   STATE_FAILED      = 'failed'
   STATE_EXPIRED     = 'expired'
  
  def update_amount_donated
    total = Money.new(self.payments.where({state: [Payment::STATE_AUTHORIZED, Payment::STATE_CAPTURED] }).sum(:amount_cents))
    self.amount_donated = total
    self.save
  end
  
end
