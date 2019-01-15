require "application_system_test_case"

class PaquetesPlanToFechasTest < ApplicationSystemTestCase
  setup do
    @paquetes_plan_to_fecha = paquetes_plan_to_fechas(:one)
  end

  test "visiting the index" do
    visit paquetes_plan_to_fechas_url
    assert_selector "h1", text: "Paquetes Plan To Fechas"
  end

  test "creating a Paquetes plan to fecha" do
    visit paquetes_plan_to_fechas_url
    click_on "New Paquetes Plan To Fecha"

    fill_in "Comentarios", with: @paquetes_plan_to_fecha.comentarios
    fill_in "Dias", with: @paquetes_plan_to_fecha.dias
    fill_in "Estado", with: @paquetes_plan_to_fecha.estado
    fill_in "Fecha Fin", with: @paquetes_plan_to_fecha.fecha_fin
    fill_in "Fecha Inicio", with: @paquetes_plan_to_fecha.fecha_inicio
    fill_in "Fecha Plan F", with: @paquetes_plan_to_fecha.fecha_plan_f
    fill_in "Fecha Plan I", with: @paquetes_plan_to_fecha.fecha_plan_i
    fill_in "Idpaquete", with: @paquetes_plan_to_fecha.idpaquete
    fill_in "Responsable", with: @paquetes_plan_to_fecha.responsable
    click_on "Create Paquetes plan to fecha"

    assert_text "Paquetes plan to fecha was successfully created"
    click_on "Back"
  end

  test "updating a Paquetes plan to fecha" do
    visit paquetes_plan_to_fechas_url
    click_on "Edit", match: :first

    fill_in "Comentarios", with: @paquetes_plan_to_fecha.comentarios
    fill_in "Dias", with: @paquetes_plan_to_fecha.dias
    fill_in "Estado", with: @paquetes_plan_to_fecha.estado
    fill_in "Fecha Fin", with: @paquetes_plan_to_fecha.fecha_fin
    fill_in "Fecha Inicio", with: @paquetes_plan_to_fecha.fecha_inicio
    fill_in "Fecha Plan F", with: @paquetes_plan_to_fecha.fecha_plan_f
    fill_in "Fecha Plan I", with: @paquetes_plan_to_fecha.fecha_plan_i
    fill_in "Idpaquete", with: @paquetes_plan_to_fecha.idpaquete
    fill_in "Responsable", with: @paquetes_plan_to_fecha.responsable
    click_on "Update Paquetes plan to fecha"

    assert_text "Paquetes plan to fecha was successfully updated"
    click_on "Back"
  end

  test "destroying a Paquetes plan to fecha" do
    visit paquetes_plan_to_fechas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Paquetes plan to fecha was successfully destroyed"
  end
end
