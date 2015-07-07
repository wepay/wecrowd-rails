module Api
  class DemoCampaignsController < ApplicationController
    protect_from_forgery with: :null_session
    #note: this API call is solely for demo purposes. It is rendering these 8 demo campaigns that currently exist on the actual WeCrowd site. The variable names were created by looking at the campaign names.
    def index
      food_project = Campaign.find_by_id(28)
      suzie_heart = Campaign.find_by_id(27)
      community_garden = Campaign.find_by_id(26)
      bike_america = Campaign.find_by_id(25)
      class_gift = Campaign.find_by_id(24)
      daughter_hand = Campaign.find_by_id(23)
      girls_disneyland = Campaign.find_by_id(22)
      dog_operation = Campaign.find_by_id(21)
      campaigns_array = [food_project, suzie_heart, community_garden, bike_america, class_gift, daughter_hand, girls_disneyland, dog_operation]
      render json: campaigns_array
    end
  end
end