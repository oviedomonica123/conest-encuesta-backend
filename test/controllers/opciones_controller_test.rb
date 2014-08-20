require 'test_helper'

class OpcionesControllerTest < ActionController::TestCase
  setup do
    @opcion = opciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opciones)
  end

  test "should create opcion" do
    assert_difference('Opcion.count') do
      post :create, opcion: { etiqueta: @opcion.etiqueta, valor: @opcion.valor }
    end

    assert_response 201
  end

  test "should show opcion" do
    get :show, id: @opcion
    assert_response :success
  end

  test "should update opcion" do
    put :update, id: @opcion, opcion: { etiqueta: @opcion.etiqueta, valor: @opcion.valor }
    assert_response 204
  end

  test "should destroy opcion" do
    assert_difference('Opcion.count', -1) do
      delete :destroy, id: @opcion
    end

    assert_response 204
  end
end
