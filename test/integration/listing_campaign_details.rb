require 'test_helper'

class ListingCampaignDetails < ActionDispatch::IntegrationTest

  test 'list the campaign given the ID as a parameter' do

    post 'campaigns',

         {
             Campaign:
                 {
                     id: 2
                 }
         }.to_json,
         {
             'Accept'=> application/json, 'Content-Type'=> application/json.to_s
         }

  end


end