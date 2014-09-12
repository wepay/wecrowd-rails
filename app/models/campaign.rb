class Campaign < ActiveRecord::Base
  belongs_to :user
  
  validates :name, :presence => true
  validates :description, :presence => true
  validates :goal, :numericality => { :greater_than => 0 }
  
end
