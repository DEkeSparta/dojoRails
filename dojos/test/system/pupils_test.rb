require "application_system_test_case"

class PupilsTest < ApplicationSystemTestCase
  setup do
    @pupil = pupils(:one)
  end

  test "visiting the index" do
    visit pupils_url
    assert_selector "h1", text: "Pupils"
  end

  test "creating a Pupil" do
    visit pupils_url
    click_on "New Pupil"

    click_on "Create Pupil"

    assert_text "Pupil was successfully created"
    click_on "Back"
  end

  test "updating a Pupil" do
    visit pupils_url
    click_on "Edit", match: :first

    click_on "Update Pupil"

    assert_text "Pupil was successfully updated"
    click_on "Back"
  end

  test "destroying a Pupil" do
    visit pupils_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pupil was successfully destroyed"
  end
end
