class Campaign < ActiveRecord::Base
  belongs_to :user
  has_many :payments
  
  validates :name, :presence => true
  validates :description, :presence => true
  validates :goal, :numericality => { :greater_than => 0 }
  
  # use the money-rails gem to automatically convert the goal_cents column into a Money object
  # this Money object will be accessible via the goal property on all Campaign objects
  monetize :goal_cents
  
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
  
end
