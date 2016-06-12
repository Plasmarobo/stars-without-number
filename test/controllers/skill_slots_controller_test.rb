require 'test_helper'

class SkillSlotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skill_slot = skill_slots(:one)
  end

  test "should get index" do
    get skill_slots_url
    assert_response :success
  end

  test "should get new" do
    get new_skill_slot_url
    assert_response :success
  end

  test "should create skill_slot" do
    assert_difference('SkillSlot.count') do
      post skill_slots_url, params: { skill_slot: { background_id: @skill_slot.background_id, character_id: @skill_slot.character_id, rank: @skill_slot.rank, skill_id: @skill_slot.skill_id, training_id: @skill_slot.training_id } }
    end

    assert_redirected_to skill_slot_path(SkillSlot.last)
  end

  test "should show skill_slot" do
    get skill_slot_url(@skill_slot)
    assert_response :success
  end

  test "should get edit" do
    get edit_skill_slot_url(@skill_slot)
    assert_response :success
  end

  test "should update skill_slot" do
    patch skill_slot_url(@skill_slot), params: { skill_slot: { background_id: @skill_slot.background_id, character_id: @skill_slot.character_id, rank: @skill_slot.rank, skill_id: @skill_slot.skill_id, training_id: @skill_slot.training_id } }
    assert_redirected_to skill_slot_path(@skill_slot)
  end

  test "should destroy skill_slot" do
    assert_difference('SkillSlot.count', -1) do
      delete skill_slot_url(@skill_slot)
    end

    assert_redirected_to skill_slots_path
  end
end
