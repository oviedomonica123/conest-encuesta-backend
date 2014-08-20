require 'test_helper'

class OfertasPeriodoControllerTest < ActionController::TestCase
  setup do
    @oferta_periodo = ofertas_periodo(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ofertas_periodo)
  end

  test "should create oferta_periodo" do
    assert_difference('OfertaPeriodo.count') do
      post :create, oferta_periodo: { docente_coordinador: @oferta_periodo.docente_coordinador, materia_codigo: @oferta_periodo.materia_codigo, periodo_academico_id: @oferta_periodo.periodo_academico_id }
    end

    assert_response 201
  end

  test "should show oferta_periodo" do
    get :show, id: @oferta_periodo
    assert_response :success
  end

  test "should update oferta_periodo" do
    put :update, id: @oferta_periodo, oferta_periodo: { docente_coordinador: @oferta_periodo.docente_coordinador, materia_codigo: @oferta_periodo.materia_codigo, periodo_academico_id: @oferta_periodo.periodo_academico_id }
    assert_response 204
  end

  test "should destroy oferta_periodo" do
    assert_difference('OfertaPeriodo.count', -1) do
      delete :destroy, id: @oferta_periodo
    end

    assert_response 204
  end
end
