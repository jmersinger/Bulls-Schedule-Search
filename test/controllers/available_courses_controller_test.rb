require "test_helper"

class AvailableCoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @available_course = available_courses(:one)
  end

  test "should get index" do
    get available_courses_url
    assert_response :success
  end

  test "should get new" do
    get new_available_course_url
    assert_response :success
  end

  test "should create available_course" do
    assert_difference("AvailableCourse.count") do
      post available_courses_url, params: { available_course: {  } }
    end

    assert_redirected_to available_course_url(AvailableCourse.last)
  end

  test "should show available_course" do
    get available_course_url(@available_course)
    assert_response :success
  end

  test "should get edit" do
    get edit_available_course_url(@available_course)
    assert_response :success
  end

  test "should update available_course" do
    patch available_course_url(@available_course), params: { available_course: {  } }
    assert_redirected_to available_course_url(@available_course)
  end

  test "should destroy available_course" do
    assert_difference("AvailableCourse.count", -1) do
      delete available_course_url(@available_course)
    end

    assert_redirected_to available_courses_url
  end
end
