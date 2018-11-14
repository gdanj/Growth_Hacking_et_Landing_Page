require 'test_helper'

class InstagramControllerTest < ActionDispatch::IntegrationTest
  test "should get auth" do
    get instagram_auth_url
    assert_response :success
  end

end
