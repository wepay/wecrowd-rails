module Api
  class CampaignsController < ApplicationController


    def index
        @campaigns = Campaign.all
        render json: @campaigns, status: :ok
    end

    def create
        campaigns = Campaign.all
        if id = params[:id]
            campaigns = campaigns.where(id: id)
        end
        render json: campaigns
    end

    def show
      render json: @campaign
    end


  end


end


