require 'test_helper'

class PaquetePlanToProcedimientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paquete_plan_to_procedimiento = paquete_plan_to_procedimientos(:one)
  end

  test "should get index" do
    get paquete_plan_to_procedimientos_url
    assert_response :success
  end

  test "should get new" do
    get new_paquete_plan_to_procedimiento_url
    assert_response :success
  end

  test "should create paquete_plan_to_procedimiento" do
    assert_difference('PaquetePlanToProcedimiento.count') do
      post paquete_plan_to_procedimientos_url, params: { paquete_plan_to_procedimiento: { idpaquete: @paquete_plan_to_procedimiento.idpaquete, idprocedimiento: @paquete_plan_to_procedimiento.idprocedimiento } }
    end

    assert_redirected_to paquete_plan_to_procedimiento_url(PaquetePlanToProcedimiento.last)
  end

  test "should show paquete_plan_to_procedimiento" do
    get paquete_plan_to_procedimiento_url(@paquete_plan_to_procedimiento)
    assert_response :success
  end

  test "should get edit" do
    get edit_paquete_plan_to_procedimiento_url(@paquete_plan_to_procedimiento)
    assert_response :success
  end

  test "should update paquete_plan_to_procedimiento" do
    patch paquete_plan_to_procedimiento_url(@paquete_plan_to_procedimiento), params: { paquete_plan_to_procedimiento: { idpaquete: @paquete_plan_to_procedimiento.idpaquete, idprocedimiento: @paquete_plan_to_procedimiento.idprocedimiento } }
    assert_redirected_to paquete_plan_to_procedimiento_url(@paquete_plan_to_procedimiento)
  end

  test "should destroy paquete_plan_to_procedimiento" do
    assert_difference('PaquetePlanToProcedimiento.count', -1) do
      delete paquete_plan_to_procedimiento_url(@paquete_plan_to_procedimiento)
    end

    assert_redirected_to paquete_plan_to_procedimientos_url
  end
end
