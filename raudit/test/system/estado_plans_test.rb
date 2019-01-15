require "application_system_test_case"

class EstadoPlansTest < ApplicationSystemTestCase
  setup do
    @estado_plan = estado_plans(:one)
  end

  test "visiting the index" do
    visit estado_plans_url
    assert_selector "h1", text: "Estado Plans"
  end

  test "creating a Estado plan" do
    visit estado_plans_url
    click_on "New Estado Plan"

    fill_in "Descripcion", with: @estado_plan.descripcion
    fill_in "Idestado", with: @estado_plan.idestado
    click_on "Create Estado plan"

    assert_text "Estado plan was successfully created"
    click_on "Back"
  end

  test "updating a Estado plan" do
    visit estado_plans_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @estado_plan.descripcion
    fill_in "Idestado", with: @estado_plan.idestado
    click_on "Update Estado plan"

    assert_text "Estado plan was successfully updated"
    click_on "Back"
  end

  test "destroying a Estado plan" do
    visit estado_plans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Estado plan was successfully destroyed"
  end
end
