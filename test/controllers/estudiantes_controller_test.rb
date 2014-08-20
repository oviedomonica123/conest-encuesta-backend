require 'test_helper'

class EstudiantesControllerTest < ActionController::TestCase
  setup do
    @estudiante = estudiantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estudiantes)
  end

  test "should create estudiante" do
    assert_difference('Estudiante.count') do
      post :create, estudiante: { cedula: @estudiante.cedula, primer_apellido: @estudiante.primer_apellido, primer_nombre: @estudiante.primer_nombre, segundo_apellido: @estudiante.segundo_apellido, segundo_nombre: @estudiante.segundo_nombre }
    end

    assert_response 201
  end

  test "should show estudiante" do
    get :show, id: @estudiante
    assert_response :success
  end

  test "should update estudiante" do
    put :update, id: @estudiante, estudiante: { cedula: @estudiante.cedula, primer_apellido: @estudiante.primer_apellido, primer_nombre: @estudiante.primer_nombre, segundo_apellido: @estudiante.segundo_apellido, segundo_nombre: @estudiante.segundo_nombre }
    assert_response 204
  end

  test "should destroy estudiante" do
    assert_difference('Estudiante.count', -1) do
      delete :destroy, id: @estudiante
    end

    assert_response 204
  end
end
