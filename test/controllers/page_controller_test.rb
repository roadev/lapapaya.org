require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get challenges" do
    get :challenges
    assert_response :success
  end

end
