require 'test_helper'

class ConsultasControllerTest < ActionController::TestCase
  setup do
    @consulta = consultas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consultas)
  end

  test "should create consulta" do
    assert_difference('Consulta.count') do
      post :create, consulta: { instrumento_id: @consulta.instrumento_id, oferta_academica_id: @consulta.oferta_academica_id }
    end

    assert_response 201
  end

  test "should show consulta" do
    get :show, id: @consulta
    assert_response :success
  end

  test "should update consulta" do
    put :update, id: @consulta, consulta: { instrumento_id: @consulta.instrumento_id, oferta_academica_id: @consulta.oferta_academica_id }
    assert_response 204
  end

  test "should destroy consulta" do
    assert_difference('Consulta.count', -1) do
      delete :destroy, id: @consulta
    end

    assert_response 204
  end
end
