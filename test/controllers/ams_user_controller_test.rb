require 'test_helper'

class AmsUserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ams_user_index_url
    assert_response :success
  end

end
