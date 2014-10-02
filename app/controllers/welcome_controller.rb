class WelcomeController < ApplicationController
  def index
    @campaigns = Campaign.where({ featured: true }).order("created_at DESC").limit(8)
  end

  def about
  end
  
  def terms
  end
end
