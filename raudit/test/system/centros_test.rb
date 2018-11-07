require "application_system_test_case"

class CentrosTest < ApplicationSystemTestCase
  setup do
    @centro = centros(:one)
  end

  test "visiting the index" do
    visit centros_url
    assert_selector "h1", text: "Centros"
  end

  test "creating a Centro" do
    visit centros_url
    click_on "New Centro"

    fill_in "Estados", with: @centro.estados_id
    fill_in "Nombre", with: @centro.nombre
    click_on "Create Centro"

    assert_text "Centro was successfully created"
    click_on "Back"
  end

  test "updating a Centro" do
    visit centros_url
    click_on "Edit", match: :first

    fill_in "Estados", with: @centro.estados_id
    fill_in "Nombre", with: @centro.nombre
    click_on "Update Centro"

    assert_text "Centro was successfully updated"
    click_on "Back"
  end

  test "destroying a Centro" do
    visit centros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Centro was successfully destroyed"
  end
end
