require 'test_helper'

class MentalSaveProgressionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mental_save_progression = mental_save_progressions(:one)
  end

  test "should get index" do
    get mental_save_progressions_url
    assert_response :success
  end

  test "should get new" do
    get new_mental_save_progression_url
    assert_response :success
  end

  test "should create mental_save_progression" do
    assert_difference('MentalSaveProgression.count') do
      post mental_save_progressions_url, params: { mental_save_progression: { character_class_id: @mental_save_progression.character_class_id, level: @mental_save_progression.level, mental_save: @mental_save_progression.mental_save } }
    end

    assert_redirected_to mental_save_progression_path(MentalSaveProgression.last)
  end

  test "should show mental_save_progression" do
    get mental_save_progression_url(@mental_save_progression)
    assert_response :success
  end

  test "should get edit" do
    get edit_mental_save_progression_url(@mental_save_progression)
    assert_response :success
  end

  test "should update mental_save_progression" do
    patch mental_save_progression_url(@mental_save_progression), params: { mental_save_progression: { character_class_id: @mental_save_progression.character_class_id, level: @mental_save_progression.level, mental_save: @mental_save_progression.mental_save } }
    assert_redirected_to mental_save_progression_path(@mental_save_progression)
  end

  test "should destroy mental_save_progression" do
    assert_difference('MentalSaveProgression.count', -1) do
      delete mental_save_progression_url(@mental_save_progression)
    end

    assert_redirected_to mental_save_progressions_path
  end
end
