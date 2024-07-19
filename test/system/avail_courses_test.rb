require "application_system_test_case"

class AvailCoursesTest < ApplicationSystemTestCase
  setup do
    @avail_course = avail_courses(:one)
  end

  test "visiting the index" do
    visit avail_courses_url
    assert_selector "h1", text: "Avail courses"
  end

  test "should create avail course" do
    visit avail_courses_url
    click_on "New avail course"

    click_on "Create Avail course"

    assert_text "Avail course was successfully created"
    click_on "Back"
  end

  test "should update Avail course" do
    visit avail_course_url(@avail_course)
    click_on "Edit this avail course", match: :first

    click_on "Update Avail course"

    assert_text "Avail course was successfully updated"
    click_on "Back"
  end

  test "should destroy Avail course" do
    visit avail_course_url(@avail_course)
    click_on "Destroy this avail course", match: :first

    assert_text "Avail course was successfully destroyed"
  end
end
