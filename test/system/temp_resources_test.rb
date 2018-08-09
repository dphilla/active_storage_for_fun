require "application_system_test_case"

class TempResourcesTest < ApplicationSystemTestCase
  setup do
    @temp_resource = temp_resources(:one)
  end

  test "visiting the index" do
    visit temp_resources_url
    assert_selector "h1", text: "Temp Resources"
  end

  test "creating a Temp resource" do
    visit temp_resources_url
    click_on "New Temp Resource"

    click_on "Create Temp resource"

    assert_text "Temp resource was successfully created"
    click_on "Back"
  end

  test "updating a Temp resource" do
    visit temp_resources_url
    click_on "Edit", match: :first

    click_on "Update Temp resource"

    assert_text "Temp resource was successfully updated"
    click_on "Back"
  end

  test "destroying a Temp resource" do
    visit temp_resources_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temp resource was successfully destroyed"
  end
end
