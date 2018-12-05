require "application_system_test_case"

class PaquetePlanToProcedimientosTest < ApplicationSystemTestCase
  setup do
    @paquete_plan_to_procedimiento = paquete_plan_to_procedimientos(:one)
  end

  test "visiting the index" do
    visit paquete_plan_to_procedimientos_url
    assert_selector "h1", text: "Paquete Plan To Procedimientos"
  end

  test "creating a Paquete plan to procedimiento" do
    visit paquete_plan_to_procedimientos_url
    click_on "New Paquete Plan To Procedimiento"

    fill_in "Idpaquete", with: @paquete_plan_to_procedimiento.idpaquete
    fill_in "Idprocedimiento", with: @paquete_plan_to_procedimiento.idprocedimiento
    click_on "Create Paquete plan to procedimiento"

    assert_text "Paquete plan to procedimiento was successfully created"
    click_on "Back"
  end

  test "updating a Paquete plan to procedimiento" do
    visit paquete_plan_to_procedimientos_url
    click_on "Edit", match: :first

    fill_in "Idpaquete", with: @paquete_plan_to_procedimiento.idpaquete
    fill_in "Idprocedimiento", with: @paquete_plan_to_procedimiento.idprocedimiento
    click_on "Update Paquete plan to procedimiento"

    assert_text "Paquete plan to procedimiento was successfully updated"
    click_on "Back"
  end

  test "destroying a Paquete plan to procedimiento" do
    visit paquete_plan_to_procedimientos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Paquete plan to procedimiento was successfully destroyed"
  end
end
