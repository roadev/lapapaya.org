require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get patrocinios" do
    get :patrocinios
    assert_response :success
  end

end
