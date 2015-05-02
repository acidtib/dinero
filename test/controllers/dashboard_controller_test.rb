require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get door" do
    get :door
    assert_response :success
  end

  test "should get settings" do
    get :settings
    assert_response :success
  end

end
