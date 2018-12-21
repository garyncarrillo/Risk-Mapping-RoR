require 'test_helper'

class PaquetesControllerTest < ActionDispatch::IntegrationTest
  test "should get plan" do
    get paquetes_plan_url
    assert_response :success
  end

end
