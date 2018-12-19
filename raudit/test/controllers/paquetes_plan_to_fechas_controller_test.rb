require 'test_helper'

class PaquetesPlanToFechasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paquetes_plan_to_fecha = paquetes_plan_to_fechas(:one)
  end

  test "should get index" do
    get paquetes_plan_to_fechas_url
    assert_response :success
  end

  test "should get new" do
    get new_paquetes_plan_to_fecha_url
    assert_response :success
  end

  test "should create paquetes_plan_to_fecha" do
    assert_difference('PaquetesPlanToFecha.count') do
      post paquetes_plan_to_fechas_url, params: { paquetes_plan_to_fecha: { comentarios: @paquetes_plan_to_fecha.comentarios, dias: @paquetes_plan_to_fecha.dias, fecha_fin: @paquetes_plan_to_fecha.fecha_fin, fecha_inicio: @paquetes_plan_to_fecha.fecha_inicio, fecha_plan_f: @paquetes_plan_to_fecha.fecha_plan_f, fecha_plan_i: @paquetes_plan_to_fecha.fecha_plan_i, idpaquete: @paquetes_plan_to_fecha.idpaquete, responsable: @paquetes_plan_to_fecha.responsable } }
    end

    assert_redirected_to paquetes_plan_to_fecha_url(PaquetesPlanToFecha.last)
  end

  test "should show paquetes_plan_to_fecha" do
    get paquetes_plan_to_fecha_url(@paquetes_plan_to_fecha)
    assert_response :success
  end

  test "should get edit" do
    get edit_paquetes_plan_to_fecha_url(@paquetes_plan_to_fecha)
    assert_response :success
  end

  test "should update paquetes_plan_to_fecha" do
    patch paquetes_plan_to_fecha_url(@paquetes_plan_to_fecha), params: { paquetes_plan_to_fecha: { comentarios: @paquetes_plan_to_fecha.comentarios, dias: @paquetes_plan_to_fecha.dias, fecha_fin: @paquetes_plan_to_fecha.fecha_fin, fecha_inicio: @paquetes_plan_to_fecha.fecha_inicio, fecha_plan_f: @paquetes_plan_to_fecha.fecha_plan_f, fecha_plan_i: @paquetes_plan_to_fecha.fecha_plan_i, idpaquete: @paquetes_plan_to_fecha.idpaquete, responsable: @paquetes_plan_to_fecha.responsable } }
    assert_redirected_to paquetes_plan_to_fecha_url(@paquetes_plan_to_fecha)
  end

  test "should destroy paquetes_plan_to_fecha" do
    assert_difference('PaquetesPlanToFecha.count', -1) do
      delete paquetes_plan_to_fecha_url(@paquetes_plan_to_fecha)
    end

    assert_redirected_to paquetes_plan_to_fechas_url
  end
end
