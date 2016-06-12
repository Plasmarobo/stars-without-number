require 'test_helper'

class LevelProgressionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @level_progression = level_progressions(:one)
  end

  test "should get index" do
    get level_progressions_url
    assert_response :success
  end

  test "should get new" do
    get new_level_progression_url
    assert_response :success
  end

  test "should create level_progression" do
    assert_difference('LevelProgression.count') do
      post level_progressions_url, params: { level_progression: { character_class_id: @level_progression.character_class_id, level: @level_progression.level, xp_requirement: @level_progression.xp_requirement } }
    end

    assert_redirected_to level_progression_path(LevelProgression.last)
  end

  test "should show level_progression" do
    get level_progression_url(@level_progression)
    assert_response :success
  end

  test "should get edit" do
    get edit_level_progression_url(@level_progression)
    assert_response :success
  end

  test "should update level_progression" do
    patch level_progression_url(@level_progression), params: { level_progression: { character_class_id: @level_progression.character_class_id, level: @level_progression.level, xp_requirement: @level_progression.xp_requirement } }
    assert_redirected_to level_progression_path(@level_progression)
  end

  test "should destroy level_progression" do
    assert_difference('LevelProgression.count', -1) do
      delete level_progression_url(@level_progression)
    end

    assert_redirected_to level_progressions_path
  end
end
