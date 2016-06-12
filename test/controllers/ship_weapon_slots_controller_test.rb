require 'test_helper'

class ShipWeaponSlotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ship_weapon_slot = ship_weapon_slots(:one)
  end

  test "should get index" do
    get ship_weapon_slots_url
    assert_response :success
  end

  test "should get new" do
    get new_ship_weapon_slot_url
    assert_response :success
  end

  test "should create ship_weapon_slot" do
    assert_difference('ShipWeaponSlot.count') do
      post ship_weapon_slots_url, params: { ship_weapon_slot: { ammo_slot_id: @ship_weapon_slot.ammo_slot_id, ship_id: @ship_weapon_slot.ship_id, ship_weapon_id: @ship_weapon_slot.ship_weapon_id } }
    end

    assert_redirected_to ship_weapon_slot_path(ShipWeaponSlot.last)
  end

  test "should show ship_weapon_slot" do
    get ship_weapon_slot_url(@ship_weapon_slot)
    assert_response :success
  end

  test "should get edit" do
    get edit_ship_weapon_slot_url(@ship_weapon_slot)
    assert_response :success
  end

  test "should update ship_weapon_slot" do
    patch ship_weapon_slot_url(@ship_weapon_slot), params: { ship_weapon_slot: { ammo_slot_id: @ship_weapon_slot.ammo_slot_id, ship_id: @ship_weapon_slot.ship_id, ship_weapon_id: @ship_weapon_slot.ship_weapon_id } }
    assert_redirected_to ship_weapon_slot_path(@ship_weapon_slot)
  end

  test "should destroy ship_weapon_slot" do
    assert_difference('ShipWeaponSlot.count', -1) do
      delete ship_weapon_slot_url(@ship_weapon_slot)
    end

    assert_redirected_to ship_weapon_slots_path
  end
end
