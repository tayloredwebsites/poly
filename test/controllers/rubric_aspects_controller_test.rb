require 'test_helper'

class RubricAspectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rubric_aspect = rubric_aspects(:one)
  end

  test "should get index" do
    get rubric_aspects_url
    assert_response :success
  end

  test "should get new" do
    get new_rubric_aspect_url
    assert_response :success
  end

  test "should create rubric_aspect" do
    assert_difference('RubricAspect.count') do
      post rubric_aspects_url, params: { rubric_aspect: { name: @rubric_aspect.name } }
    end

    assert_redirected_to rubric_aspect_url(RubricAspect.last)
  end

  test "should show rubric_aspect" do
    get rubric_aspect_url(@rubric_aspect)
    assert_response :success
  end

  test "should get edit" do
    get edit_rubric_aspect_url(@rubric_aspect)
    assert_response :success
  end

  test "should update rubric_aspect" do
    patch rubric_aspect_url(@rubric_aspect), params: { rubric_aspect: { name: @rubric_aspect.name } }
    assert_redirected_to rubric_aspect_url(@rubric_aspect)
  end

  test "should destroy rubric_aspect" do
    assert_difference('RubricAspect.count', -1) do
      delete rubric_aspect_url(@rubric_aspect)
    end

    assert_redirected_to rubric_aspects_url
  end
end
