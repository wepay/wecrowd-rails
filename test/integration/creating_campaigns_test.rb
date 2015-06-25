require 'test_helper'

class CreatingCampaignsTest < ActionDispatch::IntegrationTest

  test 'creates campaigns' do

    post 'campaigns',
         {
             Campaign:
                 {user_id: 232411045, name: "Test Campaign 06/12", description: "This is a test description.", goal: 500, account_type: "Individual"}}.to_json,
             {'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

    assert_equal 201, response.status
    assert_equal Mime::JSON, response.content_type

    campaign = json(response.body)

  end


end