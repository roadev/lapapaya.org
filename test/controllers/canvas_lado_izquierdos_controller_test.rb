require 'test_helper'

class CanvasLadoIzquierdosControllerTest < ActionController::TestCase
  setup do
    @canvas_lado_izquierdo = canvas_lado_izquierdos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:canvas_lado_izquierdos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create canvas_lado_izquierdo" do
    assert_difference('CanvasLadoIzquierdo.count') do
      post :create, canvas_lado_izquierdo: { actividad_clave1: @canvas_lado_izquierdo.actividad_clave1, actividad_clave2: @canvas_lado_izquierdo.actividad_clave2, actividad_clave3: @canvas_lado_izquierdo.actividad_clave3, problema_general: @canvas_lado_izquierdo.problema_general, producto1: @canvas_lado_izquierdo.producto1, producto2: @canvas_lado_izquierdo.producto2, producto3: @canvas_lado_izquierdo.producto3, recurso_clave1: @canvas_lado_izquierdo.recurso_clave1, recurso_clave2: @canvas_lado_izquierdo.recurso_clave2, recurso_clave3: @canvas_lado_izquierdo.recurso_clave3, sector: @canvas_lado_izquierdo.sector, solucion: @canvas_lado_izquierdo.solucion }
    end

    assert_redirected_to canvas_lado_izquierdo_path(assigns(:canvas_lado_izquierdo))
  end

  test "should show canvas_lado_izquierdo" do
    get :show, id: @canvas_lado_izquierdo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @canvas_lado_izquierdo
    assert_response :success
  end

  test "should update canvas_lado_izquierdo" do
    patch :update, id: @canvas_lado_izquierdo, canvas_lado_izquierdo: { actividad_clave1: @canvas_lado_izquierdo.actividad_clave1, actividad_clave2: @canvas_lado_izquierdo.actividad_clave2, actividad_clave3: @canvas_lado_izquierdo.actividad_clave3, problema_general: @canvas_lado_izquierdo.problema_general, producto1: @canvas_lado_izquierdo.producto1, producto2: @canvas_lado_izquierdo.producto2, producto3: @canvas_lado_izquierdo.producto3, recurso_clave1: @canvas_lado_izquierdo.recurso_clave1, recurso_clave2: @canvas_lado_izquierdo.recurso_clave2, recurso_clave3: @canvas_lado_izquierdo.recurso_clave3, sector: @canvas_lado_izquierdo.sector, solucion: @canvas_lado_izquierdo.solucion }
    assert_redirected_to canvas_lado_izquierdo_path(assigns(:canvas_lado_izquierdo))
  end

  test "should destroy canvas_lado_izquierdo" do
    assert_difference('CanvasLadoIzquierdo.count', -1) do
      delete :destroy, id: @canvas_lado_izquierdo
    end

    assert_redirected_to canvas_lado_izquierdos_path
  end
end
