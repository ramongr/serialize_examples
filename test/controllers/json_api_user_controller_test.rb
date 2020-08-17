require 'test_helper'

class JsonApiUserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get json_api_user_index_url
    assert_response :success
  end

end
