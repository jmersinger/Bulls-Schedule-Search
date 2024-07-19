require "test_helper"

class AvailCoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @avail_course = avail_courses(:one)
  end

  test "should get index" do
    get avail_courses_url
    assert_response :success
  end

  test "should get new" do
    get new_avail_course_url
    assert_response :success
  end

  test "should create avail_course" do
    assert_difference("AvailCourse.count") do
      post avail_courses_url, params: { avail_course: {  } }
    end

    assert_redirected_to avail_course_url(AvailCourse.last)
  end

  test "should show avail_course" do
    get avail_course_url(@avail_course)
    assert_response :success
  end

  test "should get edit" do
    get edit_avail_course_url(@avail_course)
    assert_response :success
  end

  test "should update avail_course" do
    patch avail_course_url(@avail_course), params: { avail_course: {  } }
    assert_redirected_to avail_course_url(@avail_course)
  end

  test "should destroy avail_course" do
    assert_difference("AvailCourse.count", -1) do
      delete avail_course_url(@avail_course)
    end

    assert_redirected_to avail_courses_url
  end
end
