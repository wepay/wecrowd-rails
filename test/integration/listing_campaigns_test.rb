require 'test_helper'

class ListingCampaignsTest < ActionDispatch::IntegrationTest

=begin
  test 'returns list of all campaigns' do

    get 'campaigns'
    assert_equal 200, response.status
    refute_empty response.body
=end

  test 'returns campaigns filtered by ID' do

    get 'campaigns?id=2'
    assert_equal 200, response.status

  end
end