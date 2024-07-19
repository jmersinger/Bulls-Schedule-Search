require "application_system_test_case"

class AvailableCoursesTest < ApplicationSystemTestCase
  setup do
    @available_course = available_courses(:one)
  end

  test "visiting the index" do
    visit available_courses_url
    assert_selector "h1", text: "Available courses"
  end

  test "should create available course" do
    visit available_courses_url
    click_on "New available course"

    click_on "Create Available course"

    assert_text "Available course was successfully created"
    click_on "Back"
  end

  test "should update Available course" do
    visit available_course_url(@available_course)
    click_on "Edit this available course", match: :first

    click_on "Update Available course"

    assert_text "Available course was successfully updated"
    click_on "Back"
  end

  test "should destroy Available course" do
    visit available_course_url(@available_course)
    click_on "Destroy this available course", match: :first

    assert_text "Available course was successfully destroyed"
  end
end
