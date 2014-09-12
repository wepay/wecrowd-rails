require 'test_helper'

class CampaignControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get details" do
    get :details
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get donate" do
    get :donate
    assert_response :success
  end

  test "should get donation_success" do
    get :donation_success
    assert_response :success
  end

end
