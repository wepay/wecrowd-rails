module Api
  class CampaignsController < ApplicationController

    #the index function corresponds to the HTTP GET request. No parameters needed for this
    def index
        #get all the campaigns
        @campaigns = Campaign.all
        if(@campaigns!= nil)
          #loop through each campaign in the @campaigns object and store the campaign id, name and goal. The goal is originally in cents so we are displaying it in dollars
          campaigns_hash_array = @campaigns.collect{|campaign| {"campaign_id"=> campaign.id, "campaign_name" => campaign.name, "campaign_goal" => campaign.goal_cents/100}}
          render json: campaigns_hash_array, status: :ok
        else
          render json: no_campaigns_error
        end
    end
  end
end


