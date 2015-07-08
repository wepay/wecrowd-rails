module Api
  class CampaignsController < ApplicationController
    protect_from_forgery with: :null_session
    #the index function corresponds to the HTTP GET request. No parameters needed for this
    def index
        #get all the campaigns
        @campaigns = Campaign.all
        if(@campaigns!= nil)
          #loop through each campaign in the @campaigns object and store the campaign id, name and goal. The goal is originally in cents so we are displaying it in dollars
          campaigns_hash_array = @campaigns.collect{|campaign| {"campaign_id"=> campaign.id, "campaign_name" => campaign.name, "campaign_goal" => campaign.goal_cents/100}}
          render json: campaigns_hash_array, status: :ok
        else
          render json: no_campaigns_error, :status => 404
        end
    end

    #the create function corresponds to the HTTP POST request. The only parameter needed for this is campaign id. It will display more campaign details corresponding to the given campaign ID.
    def create
      campaign_id = params[:campaign_id]
      campaign = Campaign.find_by_id(campaign_id)
      if (campaign!=nil)
        retDetails = {"campaign_id"=> campaign.id, "campaign_name"=> campaign.name, "campaign_description"=> campaign.description, "campaign_goal"=> campaign.goal_cents/100, "campaign_progress"=> campaign.amount_donated_cents/100}
        render json: retDetails
      else
        render json: campaign_does_not_exist_error, :status => 404
      end
    end

    #the show function corresponds to the HTTP GET request. However, this function takes in the campaign ID parameter. If the API user wanted to see details about the campaign which corresponds to campaign ID 5, they can use the endpoint GET  api/campaigns/5 and the details will be displayed accordingly
    def show
      campaign_id = params[:id]
      campaign = Campaign.find(campaign_id)
      if (campaign!=nil)
        retDetails = {"campaign_id"=> campaign.id, "campaign_name"=> campaign.name, "campaign_description"=> campaign.description, "campaign_goal"=> campaign.goal_cents/100, "campaign_progress"=> campaign.amount_donated_cents/100, "campaign_image_url" => campaign.getimageurl(campaign.image)}
        render json: retDetails
      else
        render json: campaign_does_not_exist_error, :status => 404
      end
    end

    def new
      render json: cannot_create_campaigns_error, :status => 404
    end

    def edit
      render json: cannot_edit_error, :status => 404
    end

    def update
      render json: only_get_and_post_error, :status => 404
    end

    def destroy
      render json: only_get_and_post_error, :status => 404
    end

    def campaign_params
      params.require(:campaign).permit(:campaign_id)
    end

  end
end


