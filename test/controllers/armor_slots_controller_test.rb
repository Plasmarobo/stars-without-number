require 'test_helper'

class ArmorSlotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @armor_slot = armor_slots(:one)
  end

  test "should get index" do
    get armor_slots_url
    assert_response :success
  end

  test "should get new" do
    get new_armor_slot_url
    assert_response :success
  end

  test "should create armor_slot" do
    assert_difference('ArmorSlot.count') do
      post armor_slots_url, params: { armor_slot: { ammo_slot_id: @armor_slot.ammo_slot_id, armor_id: @armor_slot.armor_id, character_id: @armor_slot.character_id, item_id: @armor_slot.item_id } }
    end

    assert_redirected_to armor_slot_path(ArmorSlot.last)
  end

  test "should show armor_slot" do
    get armor_slot_url(@armor_slot)
    assert_response :success
  end

  test "should get edit" do
    get edit_armor_slot_url(@armor_slot)
    assert_response :success
  end

  test "should update armor_slot" do
    patch armor_slot_url(@armor_slot), params: { armor_slot: { ammo_slot_id: @armor_slot.ammo_slot_id, armor_id: @armor_slot.armor_id, character_id: @armor_slot.character_id, item_id: @armor_slot.item_id } }
    assert_redirected_to armor_slot_path(@armor_slot)
  end

  test "should destroy armor_slot" do
    assert_difference('ArmorSlot.count', -1) do
      delete armor_slot_url(@armor_slot)
    end

    assert_redirected_to armor_slots_path
  end
end
