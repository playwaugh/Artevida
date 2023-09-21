require "application_system_test_case"

class CraftsTest < ApplicationSystemTestCase
  setup do
    @craft = crafts(:one)
  end

  test "visiting the index" do
    visit crafts_url
    assert_selector "h1", text: "Crafts"
  end

  test "should create craft" do
    visit crafts_url
    click_on "New craft"

    fill_in "Description", with: @craft.description
    fill_in "Name", with: @craft.name
    click_on "Create Craft"

    assert_text "Craft was successfully created"
    click_on "Back"
  end

  test "should update Craft" do
    visit craft_url(@craft)
    click_on "Edit this craft", match: :first

    fill_in "Description", with: @craft.description
    fill_in "Name", with: @craft.name
    click_on "Update Craft"

    assert_text "Craft was successfully updated"
    click_on "Back"
  end

  test "should destroy Craft" do
    visit craft_url(@craft)
    click_on "Destroy this craft", match: :first

    assert_text "Craft was successfully destroyed"
  end
end
