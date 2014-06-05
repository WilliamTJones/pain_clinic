require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  xtest "should get index" do
    get :index
    assert_response :success
  end

end
