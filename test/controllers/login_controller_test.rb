require 'test_helper'

class LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get show_signup" do
    get login_show_signup_url
    assert_response :success
  end

  test "should get show_login" do
    get login_show_login_url
    assert_response :success
  end

end
