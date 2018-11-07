require 'test_helper'

class RiesgosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @riesgo = riesgos(:one)
  end

  test "should get index" do
    get riesgos_url
    assert_response :success
  end

  test "should get new" do
    get new_riesgo_url
    assert_response :success
  end

  test "should create riesgo" do
    assert_difference('Riesgo.count') do
      post riesgos_url, params: { riesgo: { causa: @riesgo.causa, descripcion: @riesgo.descripcion, efecto: @riesgo.efecto, f_humano: @riesgo.f_humano, f_natural: @riesgo.f_natural, f_otros: @riesgo.f_otros, f_proceso: @riesgo.f_proceso, f_tecnologico: @riesgo.f_tecnologico, idprodimientos: @riesgo.idprodimientos, nivel_riesgo_inherente: @riesgo.nivel_riesgo_inherente, r_categoria: @riesgo.r_categoria } }
    end

    assert_redirected_to riesgo_url(Riesgo.last)
  end

  test "should show riesgo" do
    get riesgo_url(@riesgo)
    assert_response :success
  end

  test "should get edit" do
    get edit_riesgo_url(@riesgo)
    assert_response :success
  end

  test "should update riesgo" do
    patch riesgo_url(@riesgo), params: { riesgo: { causa: @riesgo.causa, descripcion: @riesgo.descripcion, efecto: @riesgo.efecto, f_humano: @riesgo.f_humano, f_natural: @riesgo.f_natural, f_otros: @riesgo.f_otros, f_proceso: @riesgo.f_proceso, f_tecnologico: @riesgo.f_tecnologico, idprodimientos: @riesgo.idprodimientos, nivel_riesgo_inherente: @riesgo.nivel_riesgo_inherente, r_categoria: @riesgo.r_categoria } }
    assert_redirected_to riesgo_url(@riesgo)
  end

  test "should destroy riesgo" do
    assert_difference('Riesgo.count', -1) do
      delete riesgo_url(@riesgo)
    end

    assert_redirected_to riesgos_url
  end
end
