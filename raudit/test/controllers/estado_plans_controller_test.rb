require 'test_helper'

class EstadoPlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estado_plan = estado_plans(:one)
  end

  test "should get index" do
    get estado_plans_url
    assert_response :success
  end

  test "should get new" do
    get new_estado_plan_url
    assert_response :success
  end

  test "should create estado_plan" do
    assert_difference('EstadoPlan.count') do
      post estado_plans_url, params: { estado_plan: { descripcion: @estado_plan.descripcion, idestado: @estado_plan.idestado } }
    end

    assert_redirected_to estado_plan_url(EstadoPlan.last)
  end

  test "should show estado_plan" do
    get estado_plan_url(@estado_plan)
    assert_response :success
  end

  test "should get edit" do
    get edit_estado_plan_url(@estado_plan)
    assert_response :success
  end

  test "should update estado_plan" do
    patch estado_plan_url(@estado_plan), params: { estado_plan: { descripcion: @estado_plan.descripcion, idestado: @estado_plan.idestado } }
    assert_redirected_to estado_plan_url(@estado_plan)
  end

  test "should destroy estado_plan" do
    assert_difference('EstadoPlan.count', -1) do
      delete estado_plan_url(@estado_plan)
    end

    assert_redirected_to estado_plans_url
  end
end
