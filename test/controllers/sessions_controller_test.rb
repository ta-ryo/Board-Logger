require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get sessions_home_url
    assert_response :success
  end

  test "should get new" do
    get sessions_new_url
    assert_response :success
  end

end
