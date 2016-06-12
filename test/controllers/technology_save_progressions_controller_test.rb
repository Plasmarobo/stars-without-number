require 'test_helper'

class TechnologySaveProgressionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @technology_save_progression = technology_save_progressions(:one)
  end

  test "should get index" do
    get technology_save_progressions_url
    assert_response :success
  end

  test "should get new" do
    get new_technology_save_progression_url
    assert_response :success
  end

  test "should create technology_save_progression" do
    assert_difference('TechnologySaveProgression.count') do
      post technology_save_progressions_url, params: { technology_save_progression: { character_class_id: @technology_save_progression.character_class_id, level: @technology_save_progression.level, technology_save: @technology_save_progression.technology_save } }
    end

    assert_redirected_to technology_save_progression_path(TechnologySaveProgression.last)
  end

  test "should show technology_save_progression" do
    get technology_save_progression_url(@technology_save_progression)
    assert_response :success
  end

  test "should get edit" do
    get edit_technology_save_progression_url(@technology_save_progression)
    assert_response :success
  end

  test "should update technology_save_progression" do
    patch technology_save_progression_url(@technology_save_progression), params: { technology_save_progression: { character_class_id: @technology_save_progression.character_class_id, level: @technology_save_progression.level, technology_save: @technology_save_progression.technology_save } }
    assert_redirected_to technology_save_progression_path(@technology_save_progression)
  end

  test "should destroy technology_save_progression" do
    assert_difference('TechnologySaveProgression.count', -1) do
      delete technology_save_progression_url(@technology_save_progression)
    end

    assert_redirected_to technology_save_progressions_path
  end
end
