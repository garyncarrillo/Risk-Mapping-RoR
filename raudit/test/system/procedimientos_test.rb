require "application_system_test_case"

class ProcedimientosTest < ApplicationSystemTestCase
  setup do
    @procedimiento = procedimientos(:one)
  end

  test "visiting the index" do
    visit procedimientos_url
    assert_selector "h1", text: "Procedimientos"
  end

  test "creating a Procedimiento" do
    visit procedimientos_url
    click_on "New Procedimiento"

    fill_in "Cargo Lider", with: @procedimiento.cargo_lider
    fill_in "Idprocesos", with: @procedimiento.idprocesos
    fill_in "Nombre", with: @procedimiento.nombre
    fill_in "Objetivo", with: @procedimiento.objetivo
    fill_in "Tipo Objetivo", with: @procedimiento.tipo_objetivo
    click_on "Create Procedimiento"

    assert_text "Procedimiento was successfully created"
    click_on "Back"
  end

  test "updating a Procedimiento" do
    visit procedimientos_url
    click_on "Edit", match: :first

    fill_in "Cargo Lider", with: @procedimiento.cargo_lider
    fill_in "Idprocesos", with: @procedimiento.idprocesos
    fill_in "Nombre", with: @procedimiento.nombre
    fill_in "Objetivo", with: @procedimiento.objetivo
    fill_in "Tipo Objetivo", with: @procedimiento.tipo_objetivo
    click_on "Update Procedimiento"

    assert_text "Procedimiento was successfully updated"
    click_on "Back"
  end

  test "destroying a Procedimiento" do
    visit procedimientos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Procedimiento was successfully destroyed"
  end
end
