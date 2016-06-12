require 'test_helper'

class VehicleSlotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle_slot = vehicle_slots(:one)
  end

  test "should get index" do
    get vehicle_slots_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_slot_url
    assert_response :success
  end

  test "should create vehicle_slot" do
    assert_difference('VehicleSlot.count') do
      post vehicle_slots_url, params: { vehicle_slot: { character_id: @vehicle_slot.character_id, hp: @vehicle_slot.hp, ship_id: @vehicle_slot.ship_id, vehicle_id: @vehicle_slot.vehicle_id } }
    end

    assert_redirected_to vehicle_slot_path(VehicleSlot.last)
  end

  test "should show vehicle_slot" do
    get vehicle_slot_url(@vehicle_slot)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_slot_url(@vehicle_slot)
    assert_response :success
  end

  test "should update vehicle_slot" do
    patch vehicle_slot_url(@vehicle_slot), params: { vehicle_slot: { character_id: @vehicle_slot.character_id, hp: @vehicle_slot.hp, ship_id: @vehicle_slot.ship_id, vehicle_id: @vehicle_slot.vehicle_id } }
    assert_redirected_to vehicle_slot_path(@vehicle_slot)
  end

  test "should destroy vehicle_slot" do
    assert_difference('VehicleSlot.count', -1) do
      delete vehicle_slot_url(@vehicle_slot)
    end

    assert_redirected_to vehicle_slots_path
  end
end
