require 'test_helper'

class LuckSaveProgressionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @luck_save_progression = luck_save_progressions(:one)
  end

  test "should get index" do
    get luck_save_progressions_url
    assert_response :success
  end

  test "should get new" do
    get new_luck_save_progression_url
    assert_response :success
  end

  test "should create luck_save_progression" do
    assert_difference('LuckSaveProgression.count') do
      post luck_save_progressions_url, params: { luck_save_progression: { character_class_id: @luck_save_progression.character_class_id, level: @luck_save_progression.level, luck_save: @luck_save_progression.luck_save } }
    end

    assert_redirected_to luck_save_progression_path(LuckSaveProgression.last)
  end

  test "should show luck_save_progression" do
    get luck_save_progression_url(@luck_save_progression)
    assert_response :success
  end

  test "should get edit" do
    get edit_luck_save_progression_url(@luck_save_progression)
    assert_response :success
  end

  test "should update luck_save_progression" do
    patch luck_save_progression_url(@luck_save_progression), params: { luck_save_progression: { character_class_id: @luck_save_progression.character_class_id, level: @luck_save_progression.level, luck_save: @luck_save_progression.luck_save } }
    assert_redirected_to luck_save_progression_path(@luck_save_progression)
  end

  test "should destroy luck_save_progression" do
    assert_difference('LuckSaveProgression.count', -1) do
      delete luck_save_progression_url(@luck_save_progression)
    end

    assert_redirected_to luck_save_progressions_path
  end
end
