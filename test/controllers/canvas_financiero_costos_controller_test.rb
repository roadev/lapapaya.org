require 'test_helper'

class CanvasFinancieroCostosControllerTest < ActionController::TestCase
  setup do
    @canvas_financiero_costo = canvas_financiero_costos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:canvas_financiero_costos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create canvas_financiero_costo" do
    assert_difference('CanvasFinancieroCosto.count') do
      post :create, canvas_financiero_costo: { alquiler: @canvas_financiero_costo.alquiler, costo_comercializacion: @canvas_financiero_costo.costo_comercializacion, costo_produccion: @canvas_financiero_costo.costo_produccion, personal: @canvas_financiero_costo.personal }
    end

    assert_redirected_to canvas_financiero_costo_path(assigns(:canvas_financiero_costo))
  end

  test "should show canvas_financiero_costo" do
    get :show, id: @canvas_financiero_costo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @canvas_financiero_costo
    assert_response :success
  end

  test "should update canvas_financiero_costo" do
    patch :update, id: @canvas_financiero_costo, canvas_financiero_costo: { alquiler: @canvas_financiero_costo.alquiler, costo_comercializacion: @canvas_financiero_costo.costo_comercializacion, costo_produccion: @canvas_financiero_costo.costo_produccion, personal: @canvas_financiero_costo.personal }
    assert_redirected_to canvas_financiero_costo_path(assigns(:canvas_financiero_costo))
  end

  test "should destroy canvas_financiero_costo" do
    assert_difference('CanvasFinancieroCosto.count', -1) do
      delete :destroy, id: @canvas_financiero_costo
    end

    assert_redirected_to canvas_financiero_costos_path
  end
end
