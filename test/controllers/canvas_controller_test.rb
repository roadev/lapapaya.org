require 'test_helper'

class CanvasControllerTest < ActionController::TestCase
  setup do
    @canva = canvas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:canvas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create canva" do
    assert_difference('Canva.count') do
      post :create, canva: { canal1: @canva.canal1, canal2: @canva.canal2, canal3: @canva.canal3, cliente1: @canva.cliente1, cliente2: @canva.cliente2, cliente3: @canva.cliente3, problema1: @canva.problema1, problema2: @canva.problema2, problema3: @canva.problema3 }
    end

    assert_redirected_to canva_path(assigns(:canva))
  end

  test "should show canva" do
    get :show, id: @canva
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @canva
    assert_response :success
  end

  test "should update canva" do
    patch :update, id: @canva, canva: { canal1: @canva.canal1, canal2: @canva.canal2, canal3: @canva.canal3, cliente1: @canva.cliente1, cliente2: @canva.cliente2, cliente3: @canva.cliente3, problema1: @canva.problema1, problema2: @canva.problema2, problema3: @canva.problema3 }
    assert_redirected_to canva_path(assigns(:canva))
  end

  test "should destroy canva" do
    assert_difference('Canva.count', -1) do
      delete :destroy, id: @canva
    end

    assert_redirected_to canvas_path
  end
end
