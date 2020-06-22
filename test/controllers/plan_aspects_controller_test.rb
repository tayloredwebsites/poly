require 'test_helper'

class PlanAspectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plan_aspect = plan_aspects(:one)
  end

  test "should get index" do
    get plan_aspects_url
    assert_response :success
  end

  test "should get new" do
    get new_plan_aspect_url
    assert_response :success
  end

  test "should create plan_aspect" do
    assert_difference('PlanAspect.count') do
      post plan_aspects_url, params: { plan_aspect: { name: @plan_aspect.name } }
    end

    assert_redirected_to plan_aspect_url(PlanAspect.last)
  end

  test "should show plan_aspect" do
    get plan_aspect_url(@plan_aspect)
    assert_response :success
  end

  test "should get edit" do
    get edit_plan_aspect_url(@plan_aspect)
    assert_response :success
  end

  test "should update plan_aspect" do
    patch plan_aspect_url(@plan_aspect), params: { plan_aspect: { name: @plan_aspect.name } }
    assert_redirected_to plan_aspect_url(@plan_aspect)
  end

  test "should destroy plan_aspect" do
    assert_difference('PlanAspect.count', -1) do
      delete plan_aspect_url(@plan_aspect)
    end

    assert_redirected_to plan_aspects_url
  end
end
