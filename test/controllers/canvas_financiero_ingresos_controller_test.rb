require 'test_helper'

class CanvasFinancieroIngresosControllerTest < ActionController::TestCase
  setup do
    @canvas_financiero_ingreso = canvas_financiero_ingresos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:canvas_financiero_ingresos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create canvas_financiero_ingreso" do
    assert_difference('CanvasFinancieroIngreso.count') do
      post :create, canvas_financiero_ingreso: { valor_venta_producto1: @canvas_financiero_ingreso.valor_venta_producto1, valor_venta_producto2: @canvas_financiero_ingreso.valor_venta_producto2, valor_venta_producto3: @canvas_financiero_ingreso.valor_venta_producto3 }
    end

    assert_redirected_to canvas_financiero_ingreso_path(assigns(:canvas_financiero_ingreso))
  end

  test "should show canvas_financiero_ingreso" do
    get :show, id: @canvas_financiero_ingreso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @canvas_financiero_ingreso
    assert_response :success
  end

  test "should update canvas_financiero_ingreso" do
    patch :update, id: @canvas_financiero_ingreso, canvas_financiero_ingreso: { valor_venta_producto1: @canvas_financiero_ingreso.valor_venta_producto1, valor_venta_producto2: @canvas_financiero_ingreso.valor_venta_producto2, valor_venta_producto3: @canvas_financiero_ingreso.valor_venta_producto3 }
    assert_redirected_to canvas_financiero_ingreso_path(assigns(:canvas_financiero_ingreso))
  end

  test "should destroy canvas_financiero_ingreso" do
    assert_difference('CanvasFinancieroIngreso.count', -1) do
      delete :destroy, id: @canvas_financiero_ingreso
    end

    assert_redirected_to canvas_financiero_ingresos_path
  end
end
