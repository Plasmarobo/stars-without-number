require 'test_helper'

class WeaponSlotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @weapon_slot = weapon_slots(:one)
  end

  test "should get index" do
    get weapon_slots_url
    assert_response :success
  end

  test "should get new" do
    get new_weapon_slot_url
    assert_response :success
  end

  test "should create weapon_slot" do
    assert_difference('WeaponSlot.count') do
      post weapon_slots_url, params: { weapon_slot: { ammo_slot_id: @weapon_slot.ammo_slot_id, character_id: @weapon_slot.character_id, item_id: @weapon_slot.item_id, vehicle_id: @weapon_slot.vehicle_id, weapon_id: @weapon_slot.weapon_id } }
    end

    assert_redirected_to weapon_slot_path(WeaponSlot.last)
  end

  test "should show weapon_slot" do
    get weapon_slot_url(@weapon_slot)
    assert_response :success
  end

  test "should get edit" do
    get edit_weapon_slot_url(@weapon_slot)
    assert_response :success
  end

  test "should update weapon_slot" do
    patch weapon_slot_url(@weapon_slot), params: { weapon_slot: { ammo_slot_id: @weapon_slot.ammo_slot_id, character_id: @weapon_slot.character_id, item_id: @weapon_slot.item_id, vehicle_id: @weapon_slot.vehicle_id, weapon_id: @weapon_slot.weapon_id } }
    assert_redirected_to weapon_slot_path(@weapon_slot)
  end

  test "should destroy weapon_slot" do
    assert_difference('WeaponSlot.count', -1) do
      delete weapon_slot_url(@weapon_slot)
    end

    assert_redirected_to weapon_slots_path
  end
end
