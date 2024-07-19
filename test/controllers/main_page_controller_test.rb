require "test_helper"

class MainPageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get main_page_index_url
    assert_response :success
  end

  test "should get login" do
    get main_page_login_url
    assert_response :success
  end

  test "should get signup" do
    get main_page_signup_url
    assert_response :success
  end
end
