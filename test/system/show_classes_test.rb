require "application_system_test_case"

class ShowClassesTest < ApplicationSystemTestCase
  setup do
    @show_class = show_classes(:one)
  end

  test "visiting the index" do
    visit show_classes_url
    assert_selector "h1", text: "Show Classes"
  end

  test "creating a Show class" do
    visit show_classes_url
    click_on "New Show Class"

    fill_in "Name", with: @show_class.name
    click_on "Create Show class"

    assert_text "Show class was successfully created"
    click_on "Back"
  end

  test "updating a Show class" do
    visit show_classes_url
    click_on "Edit", match: :first

    fill_in "Name", with: @show_class.name
    click_on "Update Show class"

    assert_text "Show class was successfully updated"
    click_on "Back"
  end

  test "destroying a Show class" do
    visit show_classes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Show class was successfully destroyed"
  end
end
