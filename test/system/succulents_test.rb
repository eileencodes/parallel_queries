require "application_system_test_case"

class SucculentsTest < ApplicationSystemTestCase
  setup do
    @succulent = succulents(:one)
  end

  test "visiting the index" do
    visit succulents_url
    assert_selector "h1", text: "Succulents"
  end

  test "creating a Succulent" do
    visit succulents_url
    click_on "New Succulent"

    fill_in "Name", with: @succulent.name
    click_on "Create Succulent"

    assert_text "Succulent was successfully created"
    click_on "Back"
  end

  test "updating a Succulent" do
    visit succulents_url
    click_on "Edit", match: :first

    fill_in "Name", with: @succulent.name
    click_on "Update Succulent"

    assert_text "Succulent was successfully updated"
    click_on "Back"
  end

  test "destroying a Succulent" do
    visit succulents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Succulent was successfully destroyed"
  end
end
