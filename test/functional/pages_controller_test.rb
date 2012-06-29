require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get auth_error" do
    get :auth_error
    assert_response :success
  end

end
