module Api
  class FeaturedCampaignsController < ApplicationController
    protect_from_forgery with: :null_session
    #note: this API call is solely for demo purposes. It is rendering these 8 demo campaigns that currently exist on the actual WeCrowd site. The variable names were created by looking at the campaign names.
    def index
      #get the featured campaigns
      @campaigns = Campaign.where({ featured: true }).order("created_at DESC").limit(8)
      #create array of objects where we display each campaign's id, name, goal and image_url
      campaigns_hash_array = @campaigns.collect{|campaign| {"campaign_id"=> campaign.id, "campaign_name" => campaign.name, "campaign_goal" => campaign.goal_cents/100, "campaign_image_url" => campaign.getimageurl(campaign.image) }}
      if(campaigns_hash_array != nil)
        render json: campaigns_hash_array
      else
        render json: no_featured_campaigns_error, :status => 404
      end
    end
  end
end