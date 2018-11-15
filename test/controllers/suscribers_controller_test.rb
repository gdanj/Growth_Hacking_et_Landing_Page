require 'test_helper'

class SuscribersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get suscribers_index_url
    assert_response :success
  end

end
