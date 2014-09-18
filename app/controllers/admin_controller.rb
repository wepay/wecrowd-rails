class AdminController < ApplicationController
  before_filter :check_user
  
  def index
    
  end
  
  private 
  
  def check_user
    if signed_in? && current_user.is_admin?
      @admin = current_user
    else
      raise ActionController::RoutingError.new('Not Found')
    end
  end
  
end
