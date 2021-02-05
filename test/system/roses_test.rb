require "application_system_test_case"

class RosesTest < ApplicationSystemTestCase
  setup do
    @rose = roses(:one)
  end

  test "visiting the index" do
    visit roses_url
    assert_selector "h1", text: "Roses"
  end

  test "creating a Rose" do
    visit roses_url
    click_on "New Rose"

    fill_in "Name", with: @rose.name
    click_on "Create Rose"

    assert_text "Rose was successfully created"
    click_on "Back"
  end

  test "updating a Rose" do
    visit roses_url
    click_on "Edit", match: :first

    fill_in "Name", with: @rose.name
    click_on "Update Rose"

    assert_text "Rose was successfully updated"
    click_on "Back"
  end

  test "destroying a Rose" do
    visit roses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rose was successfully destroyed"
  end
end
