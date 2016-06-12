require 'test_helper'

class PhysicalSaveProgressionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @physical_save_progression = physical_save_progressions(:one)
  end

  test "should get index" do
    get physical_save_progressions_url
    assert_response :success
  end

  test "should get new" do
    get new_physical_save_progression_url
    assert_response :success
  end

  test "should create physical_save_progression" do
    assert_difference('PhysicalSaveProgression.count') do
      post physical_save_progressions_url, params: { physical_save_progression: { character_class_id: @physical_save_progression.character_class_id, level: @physical_save_progression.level, physical_save: @physical_save_progression.physical_save } }
    end

    assert_redirected_to physical_save_progression_path(PhysicalSaveProgression.last)
  end

  test "should show physical_save_progression" do
    get physical_save_progression_url(@physical_save_progression)
    assert_response :success
  end

  test "should get edit" do
    get edit_physical_save_progression_url(@physical_save_progression)
    assert_response :success
  end

  test "should update physical_save_progression" do
    patch physical_save_progression_url(@physical_save_progression), params: { physical_save_progression: { character_class_id: @physical_save_progression.character_class_id, level: @physical_save_progression.level, physical_save: @physical_save_progression.physical_save } }
    assert_redirected_to physical_save_progression_path(@physical_save_progression)
  end

  test "should destroy physical_save_progression" do
    assert_difference('PhysicalSaveProgression.count', -1) do
      delete physical_save_progression_url(@physical_save_progression)
    end

    assert_redirected_to physical_save_progressions_path
  end
end
