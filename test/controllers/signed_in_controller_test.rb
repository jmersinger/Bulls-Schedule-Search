require "test_helper"

class SignedInControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get signed_in_index_url
    assert_response :success
  end

  test "should get search_classes" do
    get signed_in_search_classes_url
    assert_response :success
  end

  test "should get register" do
    get signed_in_register_url
    assert_response :success
  end

  test "should get view_schedule" do
    get signed_in_view_schedule_url
    assert_response :success
  end

  test "should get active_registration" do
    get signed_in_active_registration_url
    assert_response :success
  end

  test "should get past_classes" do
    get signed_in_past_classes_url
    assert_response :success
  end
end
