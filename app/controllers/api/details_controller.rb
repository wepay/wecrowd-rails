module Api::Campaigns
  class DetailsController < ApplicationController

    def create
      campaigns = Campaign.all
      if id = params[:id]
        campaigns = campaigns.where(id: id)

      end
      render json: campaigns
    end
  end

end