require 'test_helper'

class StowedItemSlotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stowed_item_slot = stowed_item_slots(:one)
  end

  test "should get index" do
    get stowed_item_slots_url
    assert_response :success
  end

  test "should get new" do
    get new_stowed_item_slot_url
    assert_response :success
  end

  test "should create stowed_item_slot" do
    assert_difference('StowedItemSlot.count') do
      post stowed_item_slots_url, params: { stowed_item_slot: { character_id: @stowed_item_slot.character_id, item_slot_id: @stowed_item_slot.item_slot_id } }
    end

    assert_redirected_to stowed_item_slot_path(StowedItemSlot.last)
  end

  test "should show stowed_item_slot" do
    get stowed_item_slot_url(@stowed_item_slot)
    assert_response :success
  end

  test "should get edit" do
    get edit_stowed_item_slot_url(@stowed_item_slot)
    assert_response :success
  end

  test "should update stowed_item_slot" do
    patch stowed_item_slot_url(@stowed_item_slot), params: { stowed_item_slot: { character_id: @stowed_item_slot.character_id, item_slot_id: @stowed_item_slot.item_slot_id } }
    assert_redirected_to stowed_item_slot_path(@stowed_item_slot)
  end

  test "should destroy stowed_item_slot" do
    assert_difference('StowedItemSlot.count', -1) do
      delete stowed_item_slot_url(@stowed_item_slot)
    end

    assert_redirected_to stowed_item_slots_path
  end
end
