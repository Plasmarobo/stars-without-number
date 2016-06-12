require 'test_helper'

class AttackBonusProgressionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attack_bonus_progression = attack_bonus_progressions(:one)
  end

  test "should get index" do
    get attack_bonus_progressions_url
    assert_response :success
  end

  test "should get new" do
    get new_attack_bonus_progression_url
    assert_response :success
  end

  test "should create attack_bonus_progression" do
    assert_difference('AttackBonusProgression.count') do
      post attack_bonus_progressions_url, params: { attack_bonus_progression: { attack_bonus: @attack_bonus_progression.attack_bonus, character_class_id: @attack_bonus_progression.character_class_id, level: @attack_bonus_progression.level } }
    end

    assert_redirected_to attack_bonus_progression_path(AttackBonusProgression.last)
  end

  test "should show attack_bonus_progression" do
    get attack_bonus_progression_url(@attack_bonus_progression)
    assert_response :success
  end

  test "should get edit" do
    get edit_attack_bonus_progression_url(@attack_bonus_progression)
    assert_response :success
  end

  test "should update attack_bonus_progression" do
    patch attack_bonus_progression_url(@attack_bonus_progression), params: { attack_bonus_progression: { attack_bonus: @attack_bonus_progression.attack_bonus, character_class_id: @attack_bonus_progression.character_class_id, level: @attack_bonus_progression.level } }
    assert_redirected_to attack_bonus_progression_path(@attack_bonus_progression)
  end

  test "should destroy attack_bonus_progression" do
    assert_difference('AttackBonusProgression.count', -1) do
      delete attack_bonus_progression_url(@attack_bonus_progression)
    end

    assert_redirected_to attack_bonus_progressions_path
  end
end
