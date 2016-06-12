require 'test_helper'

class BackgroundSkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @background_skill = background_skills(:one)
  end

  test "should get index" do
    get background_skills_url
    assert_response :success
  end

  test "should get new" do
    get new_background_skill_url
    assert_response :success
  end

  test "should create background_skill" do
    assert_difference('BackgroundSkill.count') do
      post background_skills_url, params: { background_skill: { background_id: @background_skill.background_id, skill_id: @background_skill.skill_id } }
    end

    assert_redirected_to background_skill_path(BackgroundSkill.last)
  end

  test "should show background_skill" do
    get background_skill_url(@background_skill)
    assert_response :success
  end

  test "should get edit" do
    get edit_background_skill_url(@background_skill)
    assert_response :success
  end

  test "should update background_skill" do
    patch background_skill_url(@background_skill), params: { background_skill: { background_id: @background_skill.background_id, skill_id: @background_skill.skill_id } }
    assert_redirected_to background_skill_path(@background_skill)
  end

  test "should destroy background_skill" do
    assert_difference('BackgroundSkill.count', -1) do
      delete background_skill_url(@background_skill)
    end

    assert_redirected_to background_skills_path
  end
end
