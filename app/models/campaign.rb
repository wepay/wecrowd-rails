class Campaign < ActiveRecord::Base
  belongs_to :user
  
  validates :name, :presence => true
  validates :description, :presence => true
  validates :goal, :numericality => { :greater_than => 0 }
  
  # use the money-rails gem to automatically convert the goal_cents column into a Money object
  # this Money object will be accessible via the goal property on all Campaign objects
  monetize :goal_cents
  
  
end
