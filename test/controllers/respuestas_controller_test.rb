require 'test_helper'

class RespuestasControllerTest < ActionController::TestCase
  setup do
    @respuesta = respuestas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:respuestas)
  end

  test "should create respuesta" do
    assert_difference('Respuesta.count') do
      post :create, respuesta: { consulta_id: @respuesta.consulta_id, pregunta_id: @respuesta.pregunta_id, valor_respuesta: @respuesta.valor_respuesta }
    end

    assert_response 201
  end

  test "should show respuesta" do
    get :show, id: @respuesta
    assert_response :success
  end

  test "should update respuesta" do
    put :update, id: @respuesta, respuesta: { consulta_id: @respuesta.consulta_id, pregunta_id: @respuesta.pregunta_id, valor_respuesta: @respuesta.valor_respuesta }
    assert_response 204
  end

  test "should destroy respuesta" do
    assert_difference('Respuesta.count', -1) do
      delete :destroy, id: @respuesta
    end

    assert_response 204
  end
end
