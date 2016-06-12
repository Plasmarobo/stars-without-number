require 'test_helper'

class ShipArmorSlotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ship_armor_slot = ship_armor_slots(:one)
  end

  test "should get index" do
    get ship_armor_slots_url
    assert_response :success
  end

  test "should get new" do
    get new_ship_armor_slot_url
    assert_response :success
  end

  test "should create ship_armor_slot" do
    assert_difference('ShipArmorSlot.count') do
      post ship_armor_slots_url, params: { ship_armor_slot: { ship_armor_id: @ship_armor_slot.ship_armor_id, ship_id: @ship_armor_slot.ship_id } }
    end

    assert_redirected_to ship_armor_slot_path(ShipArmorSlot.last)
  end

  test "should show ship_armor_slot" do
    get ship_armor_slot_url(@ship_armor_slot)
    assert_response :success
  end

  test "should get edit" do
    get edit_ship_armor_slot_url(@ship_armor_slot)
    assert_response :success
  end

  test "should update ship_armor_slot" do
    patch ship_armor_slot_url(@ship_armor_slot), params: { ship_armor_slot: { ship_armor_id: @ship_armor_slot.ship_armor_id, ship_id: @ship_armor_slot.ship_id } }
    assert_redirected_to ship_armor_slot_path(@ship_armor_slot)
  end

  test "should destroy ship_armor_slot" do
    assert_difference('ShipArmorSlot.count', -1) do
      delete ship_armor_slot_url(@ship_armor_slot)
    end

    assert_redirected_to ship_armor_slots_path
  end
end
