require 'test_helper'

class EtapasControllerTest < ActionController::TestCase
  setup do
    @etapa = etapas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:etapas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create etapa" do
    assert_difference('Etapa.count') do
      post :create, etapa: { etapa1: @etapa.etapa1, etapa2: @etapa.etapa2, etapa3: @etapa.etapa3, indicador1: @etapa.indicador1, indicador2: @etapa.indicador2, indicador3: @etapa.indicador3 }
    end

    assert_redirected_to etapa_path(assigns(:etapa))
  end

  test "should show etapa" do
    get :show, id: @etapa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @etapa
    assert_response :success
  end

  test "should update etapa" do
    patch :update, id: @etapa, etapa: { etapa1: @etapa.etapa1, etapa2: @etapa.etapa2, etapa3: @etapa.etapa3, indicador1: @etapa.indicador1, indicador2: @etapa.indicador2, indicador3: @etapa.indicador3 }
    assert_redirected_to etapa_path(assigns(:etapa))
  end

  test "should destroy etapa" do
    assert_difference('Etapa.count', -1) do
      delete :destroy, id: @etapa
    end

    assert_redirected_to etapas_path
  end
end
