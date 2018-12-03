require "application_system_test_case"

class PaquetePlansTest < ApplicationSystemTestCase
  setup do
    @paquete_plan = paquete_plans(:one)
  end

  test "visiting the index" do
    visit paquete_plans_url
    assert_selector "h1", text: "Paquete Plans"
  end

  test "creating a Paquete plan" do
    visit paquete_plans_url
    click_on "New Paquete Plan"

    fill_in "Alcance", with: @paquete_plan.alcance
    fill_in "Ano", with: @paquete_plan.ano
    fill_in "Nombre", with: @paquete_plan.nombre
    click_on "Create Paquete plan"

    assert_text "Paquete plan was successfully created"
    click_on "Back"
  end

  test "updating a Paquete plan" do
    visit paquete_plans_url
    click_on "Edit", match: :first

    fill_in "Alcance", with: @paquete_plan.alcance
    fill_in "Ano", with: @paquete_plan.ano
    fill_in "Nombre", with: @paquete_plan.nombre
    click_on "Update Paquete plan"

    assert_text "Paquete plan was successfully updated"
    click_on "Back"
  end

  test "destroying a Paquete plan" do
    visit paquete_plans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Paquete plan was successfully destroyed"
  end
end
