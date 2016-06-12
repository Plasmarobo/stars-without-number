require 'test_helper'

class TrainingSkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @training_skill = training_skills(:one)
  end

  test "should get index" do
    get training_skills_url
    assert_response :success
  end

  test "should get new" do
    get new_training_skill_url
    assert_response :success
  end

  test "should create training_skill" do
    assert_difference('TrainingSkill.count') do
      post training_skills_url, params: { training_skill: { skill_id: @training_skill.skill_id, training_id: @training_skill.training_id } }
    end

    assert_redirected_to training_skill_path(TrainingSkill.last)
  end

  test "should show training_skill" do
    get training_skill_url(@training_skill)
    assert_response :success
  end

  test "should get edit" do
    get edit_training_skill_url(@training_skill)
    assert_response :success
  end

  test "should update training_skill" do
    patch training_skill_url(@training_skill), params: { training_skill: { skill_id: @training_skill.skill_id, training_id: @training_skill.training_id } }
    assert_redirected_to training_skill_path(@training_skill)
  end

  test "should destroy training_skill" do
    assert_difference('TrainingSkill.count', -1) do
      delete training_skill_url(@training_skill)
    end

    assert_redirected_to training_skills_path
  end
end
