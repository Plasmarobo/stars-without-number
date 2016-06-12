require 'test_helper'

class AmmoSlotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ammo_slot = ammo_slots(:one)
  end

  test "should get index" do
    get ammo_slots_url
    assert_response :success
  end

  test "should get new" do
    get new_ammo_slot_url
    assert_response :success
  end

  test "should create ammo_slot" do
    assert_difference('AmmoSlot.count') do
      post ammo_slots_url, params: { ammo_slot: { cargo_slot_id: @ammo_slot.cargo_slot_id, character_id: @ammo_slot.character_id, item_slot_id: @ammo_slot.item_slot_id, rounds_fired: @ammo_slot.rounds_fired, ship_weapon_slot_id: @ammo_slot.ship_weapon_slot_id, weapon_slot_id: @ammo_slot.weapon_slot_id } }
    end

    assert_redirected_to ammo_slot_path(AmmoSlot.last)
  end

  test "should show ammo_slot" do
    get ammo_slot_url(@ammo_slot)
    assert_response :success
  end

  test "should get edit" do
    get edit_ammo_slot_url(@ammo_slot)
    assert_response :success
  end

  test "should update ammo_slot" do
    patch ammo_slot_url(@ammo_slot), params: { ammo_slot: { cargo_slot_id: @ammo_slot.cargo_slot_id, character_id: @ammo_slot.character_id, item_slot_id: @ammo_slot.item_slot_id, rounds_fired: @ammo_slot.rounds_fired, ship_weapon_slot_id: @ammo_slot.ship_weapon_slot_id, weapon_slot_id: @ammo_slot.weapon_slot_id } }
    assert_redirected_to ammo_slot_path(@ammo_slot)
  end

  test "should destroy ammo_slot" do
    assert_difference('AmmoSlot.count', -1) do
      delete ammo_slot_url(@ammo_slot)
    end

    assert_redirected_to ammo_slots_path
  end
end
