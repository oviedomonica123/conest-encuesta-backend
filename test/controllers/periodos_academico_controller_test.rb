require 'test_helper'

class PeriodosAcademicoControllerTest < ActionController::TestCase
  setup do
    @periodo_academico = periodos_academico(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:periodos_academico)
  end

  test "should create periodo_academico" do
    assert_difference('PeriodoAcademico.count') do
      post :create, periodo_academico: { periodo: @periodo_academico.periodo, ultima_sincronizacion: @periodo_academico.ultima_sincronizacion }
    end

    assert_response 201
  end

  test "should show periodo_academico" do
    get :show, id: @periodo_academico
    assert_response :success
  end

  test "should update periodo_academico" do
    put :update, id: @periodo_academico, periodo_academico: { periodo: @periodo_academico.periodo, ultima_sincronizacion: @periodo_academico.ultima_sincronizacion }
    assert_response 204
  end

  test "should destroy periodo_academico" do
    assert_difference('PeriodoAcademico.count', -1) do
      delete :destroy, id: @periodo_academico
    end

    assert_response 204
  end
end
