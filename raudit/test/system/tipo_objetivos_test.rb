require "application_system_test_case"

class TipoObjetivosTest < ApplicationSystemTestCase
  setup do
    @tipo_objetivo = tipo_objetivos(:one)
  end

  test "visiting the index" do
    visit tipo_objetivos_url
    assert_selector "h1", text: "Tipo Objetivos"
  end

  test "creating a Tipo objetivo" do
    visit tipo_objetivos_url
    click_on "New Tipo Objetivo"

    fill_in "Descripcion", with: @tipo_objetivo.descripcion
    fill_in "Estado", with: @tipo_objetivo.estado
    click_on "Create Tipo objetivo"

    assert_text "Tipo objetivo was successfully created"
    click_on "Back"
  end

  test "updating a Tipo objetivo" do
    visit tipo_objetivos_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @tipo_objetivo.descripcion
    fill_in "Estado", with: @tipo_objetivo.estado
    click_on "Update Tipo objetivo"

    assert_text "Tipo objetivo was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo objetivo" do
    visit tipo_objetivos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo objetivo was successfully destroyed"
  end
end
