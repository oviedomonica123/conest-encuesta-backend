require 'test_helper'

class PreguntasControllerTest < ActionController::TestCase
  setup do
    @pregunta = preguntas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:preguntas)
  end

  test "should create pregunta" do
    assert_difference('Pregunta.count') do
      post :create, pregunta: { descripcion: @pregunta.descripcion, interrogante: @pregunta.interrogante }
    end

    assert_response 201
  end

  test "should show pregunta" do
    get :show, id: @pregunta
    assert_response :success
  end

  test "should update pregunta" do
    put :update, id: @pregunta, pregunta: { descripcion: @pregunta.descripcion, interrogante: @pregunta.interrogante }
    assert_response 204
  end

  test "should destroy pregunta" do
    assert_difference('Pregunta.count', -1) do
      delete :destroy, id: @pregunta
    end

    assert_response 204
  end
end
