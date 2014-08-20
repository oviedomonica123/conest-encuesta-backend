require 'test_helper'

class ControlesConsultasControllerTest < ActionController::TestCase
  setup do
    @control_consulta = controles_consultas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:controles_consultas)
  end

  test "should create control_consulta" do
    assert_difference('ControlConsultas.count') do
      post :create, control_consulta: { estudiante_id: @control_consulta.estudiante_id, oferta_academica_id: @control_consulta.oferta_academica_id }
    end

    assert_response 201
  end

  test "should show control_consulta" do
    get :show, id: @control_consulta
    assert_response :success
  end

  test "should update control_consulta" do
    put :update, id: @control_consulta, control_consulta: { estudiante_id: @control_consulta.estudiante_id, oferta_academica_id: @control_consulta.oferta_academica_id }
    assert_response 204
  end

  test "should destroy control_consulta" do
    assert_difference('ControlConsultas.count', -1) do
      delete :destroy, id: @control_consulta
    end

    assert_response 204
  end
end
