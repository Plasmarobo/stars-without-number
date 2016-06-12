require 'test_helper'

class ShipFittingSlotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ship_fitting_slot = ship_fitting_slots(:one)
  end

  test "should get index" do
    get ship_fitting_slots_url
    assert_response :success
  end

  test "should get new" do
    get new_ship_fitting_slot_url
    assert_response :success
  end

  test "should create ship_fitting_slot" do
    assert_difference('ShipFittingSlot.count') do
      post ship_fitting_slots_url, params: { ship_fitting_slot: { ship_fitting_id: @ship_fitting_slot.ship_fitting_id, ship_id: @ship_fitting_slot.ship_id } }
    end

    assert_redirected_to ship_fitting_slot_path(ShipFittingSlot.last)
  end

  test "should show ship_fitting_slot" do
    get ship_fitting_slot_url(@ship_fitting_slot)
    assert_response :success
  end

  test "should get edit" do
    get edit_ship_fitting_slot_url(@ship_fitting_slot)
    assert_response :success
  end

  test "should update ship_fitting_slot" do
    patch ship_fitting_slot_url(@ship_fitting_slot), params: { ship_fitting_slot: { ship_fitting_id: @ship_fitting_slot.ship_fitting_id, ship_id: @ship_fitting_slot.ship_id } }
    assert_redirected_to ship_fitting_slot_path(@ship_fitting_slot)
  end

  test "should destroy ship_fitting_slot" do
    assert_difference('ShipFittingSlot.count', -1) do
      delete ship_fitting_slot_url(@ship_fitting_slot)
    end

    assert_redirected_to ship_fitting_slots_path
  end
end
