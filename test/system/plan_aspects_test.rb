require "application_system_test_case"

class PlanAspectsTest < ApplicationSystemTestCase
  setup do
    @plan_aspect = plan_aspects(:one)
  end

  test "visiting the index" do
    visit plan_aspects_url
    assert_selector "h1", text: "Plan Aspects"
  end

  test "creating a Plan aspect" do
    visit plan_aspects_url
    click_on "New Plan Aspect"

    fill_in "Name", with: @plan_aspect.name
    click_on "Create Plan aspect"

    assert_text "Plan aspect was successfully created"
    click_on "Back"
  end

  test "updating a Plan aspect" do
    visit plan_aspects_url
    click_on "Edit", match: :first

    fill_in "Name", with: @plan_aspect.name
    click_on "Update Plan aspect"

    assert_text "Plan aspect was successfully updated"
    click_on "Back"
  end

  test "destroying a Plan aspect" do
    visit plan_aspects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Plan aspect was successfully destroyed"
  end
end
