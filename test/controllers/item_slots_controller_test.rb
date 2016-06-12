require 'test_helper'

class ItemSlotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_slot = item_slots(:one)
  end

  test "should get index" do
    get item_slots_url
    assert_response :success
  end

  test "should get new" do
    get new_item_slot_url
    assert_response :success
  end

  test "should create item_slot" do
    assert_difference('ItemSlot.count') do
      post item_slots_url, params: { item_slot: { character_id: @item_slot.character_id, gm_notes: @item_slot.gm_notes, item_id: @item_slot.item_id, notes: @item_slot.notes, uses: @item_slot.uses } }
    end

    assert_redirected_to item_slot_path(ItemSlot.last)
  end

  test "should show item_slot" do
    get item_slot_url(@item_slot)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_slot_url(@item_slot)
    assert_response :success
  end

  test "should update item_slot" do
    patch item_slot_url(@item_slot), params: { item_slot: { character_id: @item_slot.character_id, gm_notes: @item_slot.gm_notes, item_id: @item_slot.item_id, notes: @item_slot.notes, uses: @item_slot.uses } }
    assert_redirected_to item_slot_path(@item_slot)
  end

  test "should destroy item_slot" do
    assert_difference('ItemSlot.count', -1) do
      delete item_slot_url(@item_slot)
    end

    assert_redirected_to item_slots_path
  end
end
