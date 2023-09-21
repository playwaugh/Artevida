require "application_system_test_case"

class CollaborationsTest < ApplicationSystemTestCase
  setup do
    @collaboration = collaborations(:one)
  end

  test "visiting the index" do
    visit collaborations_url
    assert_selector "h1", text: "Collaborations"
  end

  test "should create collaboration" do
    visit collaborations_url
    click_on "New collaboration"

    fill_in "Description", with: @collaboration.description
    fill_in "Name", with: @collaboration.name
    click_on "Create Collaboration"

    assert_text "Collaboration was successfully created"
    click_on "Back"
  end

  test "should update Collaboration" do
    visit collaboration_url(@collaboration)
    click_on "Edit this collaboration", match: :first

    fill_in "Description", with: @collaboration.description
    fill_in "Name", with: @collaboration.name
    click_on "Update Collaboration"

    assert_text "Collaboration was successfully updated"
    click_on "Back"
  end

  test "should destroy Collaboration" do
    visit collaboration_url(@collaboration)
    click_on "Destroy this collaboration", match: :first

    assert_text "Collaboration was successfully destroyed"
  end
end
