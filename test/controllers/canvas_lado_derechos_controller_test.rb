require 'test_helper'

class CanvasLadoDerechosControllerTest < ActionController::TestCase
  setup do
    @canvas_lado_derecho = canvas_lado_derechos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:canvas_lado_derechos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create canvas_lado_derecho" do
    assert_difference('CanvasLadoDerecho.count') do
      post :create, canvas_lado_derecho: { canales: @canvas_lado_derecho.canales, indicador_clave: @canvas_lado_derecho.indicador_clave, propuesta_de_valor: @canvas_lado_derecho.propuesta_de_valor, segmento_cliente1: @canvas_lado_derecho.segmento_cliente1, segmento_cliente22: @canvas_lado_derecho.segmento_cliente22, segmento_cliente3: @canvas_lado_derecho.segmento_cliente3, stakeholder1: @canvas_lado_derecho.stakeholder1, stakeholder2: @canvas_lado_derecho.stakeholder2, stakeholder3: @canvas_lado_derecho.stakeholder3, tratamiento_con_el_cliente: @canvas_lado_derecho.tratamiento_con_el_cliente }
    end

    assert_redirected_to canvas_lado_derecho_path(assigns(:canvas_lado_derecho))
  end

  test "should show canvas_lado_derecho" do
    get :show, id: @canvas_lado_derecho
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @canvas_lado_derecho
    assert_response :success
  end

  test "should update canvas_lado_derecho" do
    patch :update, id: @canvas_lado_derecho, canvas_lado_derecho: { canales: @canvas_lado_derecho.canales, indicador_clave: @canvas_lado_derecho.indicador_clave, propuesta_de_valor: @canvas_lado_derecho.propuesta_de_valor, segmento_cliente1: @canvas_lado_derecho.segmento_cliente1, segmento_cliente22: @canvas_lado_derecho.segmento_cliente22, segmento_cliente3: @canvas_lado_derecho.segmento_cliente3, stakeholder1: @canvas_lado_derecho.stakeholder1, stakeholder2: @canvas_lado_derecho.stakeholder2, stakeholder3: @canvas_lado_derecho.stakeholder3, tratamiento_con_el_cliente: @canvas_lado_derecho.tratamiento_con_el_cliente }
    assert_redirected_to canvas_lado_derecho_path(assigns(:canvas_lado_derecho))
  end

  test "should destroy canvas_lado_derecho" do
    assert_difference('CanvasLadoDerecho.count', -1) do
      delete :destroy, id: @canvas_lado_derecho
    end

    assert_redirected_to canvas_lado_derechos_path
  end
end
