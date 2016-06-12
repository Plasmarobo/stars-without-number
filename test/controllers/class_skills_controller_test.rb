require 'test_helper'

class ClassSkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_skill = class_skills(:one)
  end

  test "should get index" do
    get class_skills_url
    assert_response :success
  end

  test "should get new" do
    get new_class_skill_url
    assert_response :success
  end

  test "should create class_skill" do
    assert_difference('ClassSkill.count') do
      post class_skills_url, params: { class_skill: { character_class_id: @class_skill.character_class_id, skill_id: @class_skill.skill_id } }
    end

    assert_redirected_to class_skill_path(ClassSkill.last)
  end

  test "should show class_skill" do
    get class_skill_url(@class_skill)
    assert_response :success
  end

  test "should get edit" do
    get edit_class_skill_url(@class_skill)
    assert_response :success
  end

  test "should update class_skill" do
    patch class_skill_url(@class_skill), params: { class_skill: { character_class_id: @class_skill.character_class_id, skill_id: @class_skill.skill_id } }
    assert_redirected_to class_skill_path(@class_skill)
  end

  test "should destroy class_skill" do
    assert_difference('ClassSkill.count', -1) do
      delete class_skill_url(@class_skill)
    end

    assert_redirected_to class_skills_path
  end
end
