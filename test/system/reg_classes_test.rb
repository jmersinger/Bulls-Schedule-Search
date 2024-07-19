require "application_system_test_case"

class RegClassesTest < ApplicationSystemTestCase
  setup do
    @reg_class = reg_classes(:one)
  end

  test "visiting the index" do
    visit reg_classes_url
    assert_selector "h1", text: "Reg classes"
  end

  test "should create reg class" do
    visit reg_classes_url
    click_on "New reg class"

    click_on "Create Reg class"

    assert_text "Reg class was successfully created"
    click_on "Back"
  end

  test "should update Reg class" do
    visit reg_class_url(@reg_class)
    click_on "Edit this reg class", match: :first

    click_on "Update Reg class"

    assert_text "Reg class was successfully updated"
    click_on "Back"
  end

  test "should destroy Reg class" do
    visit reg_class_url(@reg_class)
    click_on "Destroy this reg class", match: :first

    assert_text "Reg class was successfully destroyed"
  end
end
