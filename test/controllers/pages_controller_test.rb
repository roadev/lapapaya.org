require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get queesmilsuenos" do
    get :queesmilsuenos
    assert_response :success
  end

end
