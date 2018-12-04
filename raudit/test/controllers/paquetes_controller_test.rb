require 'test_helper'

class PaquetesControllerTest < ActionDispatch::IntegrationTest
  test "should get asignar" do
    get paquetes_asignar_url
    assert_response :success
  end

end
