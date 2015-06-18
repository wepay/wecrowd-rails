module Api
  class DetailsController < ApplicationController

    #the create function corresponds to the HTTP POST request. The only parameter needed for this is campaign id. It will display more campaign details corresponding to the given campaign ID.
    def create
      campaign_id = params[:campaign_id]
      campaign = Campaign.find_by_id(campaign_id)
      retDetails = {"campaign_id"=> campaign.id, "campaign_name"=> campaign.name, "campaign_description"=> campaign.description, "campaign_goal"=> campaign.goal_cents/100, "campaign_progress"=> campaign.amount_donated_cents/100}
      render json: retDetails
    end

    private
    def campaign_params
      params.require(:campaign).permit(:campaign_id)
    end

  end
end