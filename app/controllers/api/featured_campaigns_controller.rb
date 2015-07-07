module Api
  class FeaturedCampaignsController < ApplicationController
    protect_from_forgery with: :null_session
    #note: this API call is solely for demo purposes. It is rendering these 8 demo campaigns that currently exist on the actual WeCrowd site. The variable names were created by looking at the campaign names.
    def index
      @campaigns = Campaign.where({ featured: true }).order("created_at DESC").limit(8)
      render json: @campaigns
    end
  end
end