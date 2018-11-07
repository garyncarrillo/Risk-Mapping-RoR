require "application_system_test_case"

class TipoProcesosTest < ApplicationSystemTestCase
  setup do
    @tipo_proceso = tipo_procesos(:one)
  end

  test "visiting the index" do
    visit tipo_procesos_url
    assert_selector "h1", text: "Tipo Procesos"
  end

  test "creating a Tipo proceso" do
    visit tipo_procesos_url
    click_on "New Tipo Proceso"

    fill_in "Nombre", with: @tipo_proceso.nombre
    click_on "Create Tipo proceso"

    assert_text "Tipo proceso was successfully created"
    click_on "Back"
  end

  test "updating a Tipo proceso" do
    visit tipo_procesos_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @tipo_proceso.nombre
    click_on "Update Tipo proceso"

    assert_text "Tipo proceso was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo proceso" do
    visit tipo_procesos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo proceso was successfully destroyed"
  end
end
