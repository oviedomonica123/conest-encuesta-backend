require 'test_helper'

class DocentesControllerTest < ActionController::TestCase
  setup do
    @docente = docentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:docentes)
  end

  test "should create docente" do
    assert_difference('Docente.count') do
      post :create, docente: { cedula: @docente.cedula, primer_apellido: @docente.primer_apellido, primer_nombre: @docente.primer_nombre, segundo_apellido: @docente.segundo_apellido, segundo_nombre: @docente.segundo_nombre }
    end

    assert_response 201
  end

  test "should show docente" do
    get :show, id: @docente
    assert_response :success
  end

  test "should update docente" do
    put :update, id: @docente, docente: { cedula: @docente.cedula, primer_apellido: @docente.primer_apellido, primer_nombre: @docente.primer_nombre, segundo_apellido: @docente.segundo_apellido, segundo_nombre: @docente.segundo_nombre }
    assert_response 204
  end

  test "should destroy docente" do
    assert_difference('Docente.count', -1) do
      delete :destroy, id: @docente
    end

    assert_response 204
  end
end
