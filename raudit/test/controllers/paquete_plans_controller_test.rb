require 'test_helper'

class PaquetePlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paquete_plan = paquete_plans(:one)
  end

  test "should get index" do
    get paquete_plans_url
    assert_response :success
  end

  test "should get new" do
    get new_paquete_plan_url
    assert_response :success
  end

  test "should create paquete_plan" do
    assert_difference('PaquetePlan.count') do
      post paquete_plans_url, params: { paquete_plan: { alcance: @paquete_plan.alcance, ano: @paquete_plan.ano, nombre: @paquete_plan.nombre } }
    end

    assert_redirected_to paquete_plan_url(PaquetePlan.last)
  end

  test "should show paquete_plan" do
    get paquete_plan_url(@paquete_plan)
    assert_response :success
  end

  test "should get edit" do
    get edit_paquete_plan_url(@paquete_plan)
    assert_response :success
  end

  test "should update paquete_plan" do
    patch paquete_plan_url(@paquete_plan), params: { paquete_plan: { alcance: @paquete_plan.alcance, ano: @paquete_plan.ano, nombre: @paquete_plan.nombre } }
    assert_redirected_to paquete_plan_url(@paquete_plan)
  end

  test "should destroy paquete_plan" do
    assert_difference('PaquetePlan.count', -1) do
      delete paquete_plan_url(@paquete_plan)
    end

    assert_redirected_to paquete_plans_url
  end
end
