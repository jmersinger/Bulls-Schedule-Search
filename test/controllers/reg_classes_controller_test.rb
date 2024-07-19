require "test_helper"

class RegClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reg_class = reg_classes(:one)
  end

  test "should get index" do
    get reg_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_reg_class_url
    assert_response :success
  end

  test "should create reg_class" do
    assert_difference("RegClass.count") do
      post reg_classes_url, params: { reg_class: {  } }
    end

    assert_redirected_to reg_class_url(RegClass.last)
  end

  test "should show reg_class" do
    get reg_class_url(@reg_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_reg_class_url(@reg_class)
    assert_response :success
  end

  test "should update reg_class" do
    patch reg_class_url(@reg_class), params: { reg_class: {  } }
    assert_redirected_to reg_class_url(@reg_class)
  end

  test "should destroy reg_class" do
    assert_difference("RegClass.count", -1) do
      delete reg_class_url(@reg_class)
    end

    assert_redirected_to reg_classes_url
  end
end
