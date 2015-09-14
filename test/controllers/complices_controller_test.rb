require 'test_helper'

class ComplicesControllerTest < ActionController::TestCase
  setup do
    @complice = complices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:complices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create complice" do
    assert_difference('Complice.count') do
      post :create, complice: { dream_id: @complice.dream_id, giving: @complice.giving, reason: @complice.reason, tags: @complice.tags }
    end

    assert_redirected_to complice_path(assigns(:complice))
  end

  test "should show complice" do
    get :show, id: @complice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @complice
    assert_response :success
  end

  test "should update complice" do
    patch :update, id: @complice, complice: { dream_id: @complice.dream_id, giving: @complice.giving, reason: @complice.reason, tags: @complice.tags }
    assert_redirected_to complice_path(assigns(:complice))
  end

  test "should destroy complice" do
    assert_difference('Complice.count', -1) do
      delete :destroy, id: @complice
    end

    assert_redirected_to complices_path
  end
end
