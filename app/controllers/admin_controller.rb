class AdminController < ApplicationController
  before_filter :check_user
  before_filter :get_campaign, :only => [ :campaign, :delete_campaign, :undelete_campaign, :feature_campaign, :unfeature_campaign ]
  
  def index
    
  end
  
  def campaigns
    @campaigns = Campaign.all.order("created_at DESC")
  end
  
  def campaign
    
  end
  
  def delete_campaign
    @campaign.delete
    message("Campaign Deleted!")
    redirect_to("/admin/campaign/#{@campaign.id}")
  end
  
  def undelete_campaign
    @campaign.deleted_at = nil
    @campaign.save
    message("Campaign UnDeleted!")
    redirect_to("/admin/campaign/#{@campaign.id}")
  end
  
  def feature_campaign
    @campaign.feature
    @campaign.save
    message("Campaign Featured!")
    redirect_to("/admin/campaign/#{@campaign.id}")
  end
  
  def unfeature_campaign
    @campaign.unfeature
    @campaign.save
    message("Campaign UnFeatured!")
    redirect_to("/admin/campaign/#{@campaign.id}")
  end
  
  def users
    @users = User.all.order("created_at DESC")
  end
  
  def user
    @user = User.find(params[:user_id])
  end
  
  private 
  
  def check_user
    if signed_in? && current_user.is_admin?
      @admin = current_user
    else
      raise ActionController::RoutingError.new('Not Found')
    end
  end
  
  def get_campaign
    @campaign = Campaign.with_deleted.find(params[:campaign_id])
  end
  
end
