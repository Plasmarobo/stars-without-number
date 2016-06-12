require 'test_helper'

class ReadiedItemSlotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @readied_item_slot = readied_item_slots(:one)
  end

  test "should get index" do
    get readied_item_slots_url
    assert_response :success
  end

  test "should get new" do
    get new_readied_item_slot_url
    assert_response :success
  end

  test "should create readied_item_slot" do
    assert_difference('ReadiedItemSlot.count') do
      post readied_item_slots_url, params: { readied_item_slot: { character_id: @readied_item_slot.character_id, item_slot_id: @readied_item_slot.item_slot_id } }
    end

    assert_redirected_to readied_item_slot_path(ReadiedItemSlot.last)
  end

  test "should show readied_item_slot" do
    get readied_item_slot_url(@readied_item_slot)
    assert_response :success
  end

  test "should get edit" do
    get edit_readied_item_slot_url(@readied_item_slot)
    assert_response :success
  end

  test "should update readied_item_slot" do
    patch readied_item_slot_url(@readied_item_slot), params: { readied_item_slot: { character_id: @readied_item_slot.character_id, item_slot_id: @readied_item_slot.item_slot_id } }
    assert_redirected_to readied_item_slot_path(@readied_item_slot)
  end

  test "should destroy readied_item_slot" do
    assert_difference('ReadiedItemSlot.count', -1) do
      delete readied_item_slot_url(@readied_item_slot)
    end

    assert_redirected_to readied_item_slots_path
  end
end
