module Api
  class DetailsController < ApplicationController

    #the create function corresponds to the HTTP POST request. The only parameter needed for this is campaign id. It will display the entire campaign object corresponding to the given campaign ID.
    def create
      #get all the campaigns
      campaigns = Campaign.all
      if id = params[:id]
        campaigns = campaigns.where(id: id)
        render json: campaigns
      end

    end
  end
end