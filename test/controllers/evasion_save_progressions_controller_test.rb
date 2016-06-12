require 'test_helper'

class EvasionSaveProgressionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evasion_save_progression = evasion_save_progressions(:one)
  end

  test "should get index" do
    get evasion_save_progressions_url
    assert_response :success
  end

  test "should get new" do
    get new_evasion_save_progression_url
    assert_response :success
  end

  test "should create evasion_save_progression" do
    assert_difference('EvasionSaveProgression.count') do
      post evasion_save_progressions_url, params: { evasion_save_progression: { character_class_id: @evasion_save_progression.character_class_id, evasion_save: @evasion_save_progression.evasion_save, level: @evasion_save_progression.level } }
    end

    assert_redirected_to evasion_save_progression_path(EvasionSaveProgression.last)
  end

  test "should show evasion_save_progression" do
    get evasion_save_progression_url(@evasion_save_progression)
    assert_response :success
  end

  test "should get edit" do
    get edit_evasion_save_progression_url(@evasion_save_progression)
    assert_response :success
  end

  test "should update evasion_save_progression" do
    patch evasion_save_progression_url(@evasion_save_progression), params: { evasion_save_progression: { character_class_id: @evasion_save_progression.character_class_id, evasion_save: @evasion_save_progression.evasion_save, level: @evasion_save_progression.level } }
    assert_redirected_to evasion_save_progression_path(@evasion_save_progression)
  end

  test "should destroy evasion_save_progression" do
    assert_difference('EvasionSaveProgression.count', -1) do
      delete evasion_save_progression_url(@evasion_save_progression)
    end

    assert_redirected_to evasion_save_progressions_path
  end
end
