require "application_system_test_case"

class EggsTest < ApplicationSystemTestCase
  setup do
    @egg = eggs(:one)
  end

  test "visiting the index" do
    visit eggs_url
    assert_selector "h1", text: "Eggs"
  end

  test "should create egg" do
    visit eggs_url
    click_on "New egg"

    fill_in "Content", with: @egg.content
    fill_in "User", with: @egg.user_id
    click_on "Create Egg"

    assert_text "Egg was successfully created"
    click_on "Back"
  end

  test "should update Egg" do
    visit egg_url(@egg)
    click_on "Edit this egg", match: :first

    fill_in "Content", with: @egg.content
    fill_in "User", with: @egg.user_id
    click_on "Update Egg"

    assert_text "Egg was successfully updated"
    click_on "Back"
  end

  test "should destroy Egg" do
    visit egg_url(@egg)
    click_on "Destroy this egg", match: :first

    assert_text "Egg was successfully destroyed"
  end
end
