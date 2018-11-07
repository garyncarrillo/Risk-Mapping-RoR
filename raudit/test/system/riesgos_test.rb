require "application_system_test_case"

class RiesgosTest < ApplicationSystemTestCase
  setup do
    @riesgo = riesgos(:one)
  end

  test "visiting the index" do
    visit riesgos_url
    assert_selector "h1", text: "Riesgos"
  end

  test "creating a Riesgo" do
    visit riesgos_url
    click_on "New Riesgo"

    fill_in "Causa", with: @riesgo.causa
    fill_in "Descripcion", with: @riesgo.descripcion
    fill_in "Efecto", with: @riesgo.efecto
    fill_in "F Humano", with: @riesgo.f_humano
    fill_in "F Natural", with: @riesgo.f_natural
    fill_in "F Otros", with: @riesgo.f_otros
    fill_in "F Proceso", with: @riesgo.f_proceso
    fill_in "F Tecnologico", with: @riesgo.f_tecnologico
    fill_in "Idprodimientos", with: @riesgo.idprodimientos
    fill_in "Nivel Riesgo Inherente", with: @riesgo.nivel_riesgo_inherente
    fill_in "R Categoria", with: @riesgo.r_categoria
    click_on "Create Riesgo"

    assert_text "Riesgo was successfully created"
    click_on "Back"
  end

  test "updating a Riesgo" do
    visit riesgos_url
    click_on "Edit", match: :first

    fill_in "Causa", with: @riesgo.causa
    fill_in "Descripcion", with: @riesgo.descripcion
    fill_in "Efecto", with: @riesgo.efecto
    fill_in "F Humano", with: @riesgo.f_humano
    fill_in "F Natural", with: @riesgo.f_natural
    fill_in "F Otros", with: @riesgo.f_otros
    fill_in "F Proceso", with: @riesgo.f_proceso
    fill_in "F Tecnologico", with: @riesgo.f_tecnologico
    fill_in "Idprodimientos", with: @riesgo.idprodimientos
    fill_in "Nivel Riesgo Inherente", with: @riesgo.nivel_riesgo_inherente
    fill_in "R Categoria", with: @riesgo.r_categoria
    click_on "Update Riesgo"

    assert_text "Riesgo was successfully updated"
    click_on "Back"
  end

  test "destroying a Riesgo" do
    visit riesgos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Riesgo was successfully destroyed"
  end
end
