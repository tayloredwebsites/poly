require "application_system_test_case"

class RubricAspectsTest < ApplicationSystemTestCase
  setup do
    @rubric_aspect = rubric_aspects(:one)
  end

  test "visiting the index" do
    visit rubric_aspects_url
    assert_selector "h1", text: "Rubric Aspects"
  end

  test "creating a Rubric aspect" do
    visit rubric_aspects_url
    click_on "New Rubric Aspect"

    fill_in "Name", with: @rubric_aspect.name
    click_on "Create Rubric aspect"

    assert_text "Rubric aspect was successfully created"
    click_on "Back"
  end

  test "updating a Rubric aspect" do
    visit rubric_aspects_url
    click_on "Edit", match: :first

    fill_in "Name", with: @rubric_aspect.name
    click_on "Update Rubric aspect"

    assert_text "Rubric aspect was successfully updated"
    click_on "Back"
  end

  test "destroying a Rubric aspect" do
    visit rubric_aspects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rubric aspect was successfully destroyed"
  end
end
