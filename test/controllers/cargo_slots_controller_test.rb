require 'test_helper'

class CargoSlotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cargo_slot = cargo_slots(:one)
  end

  test "should get index" do
    get cargo_slots_url
    assert_response :success
  end

  test "should get new" do
    get new_cargo_slot_url
    assert_response :success
  end

  test "should create cargo_slot" do
    assert_difference('CargoSlot.count') do
      post cargo_slots_url, params: { cargo_slot: { cargo_id: @cargo_slot.cargo_id, count: @cargo_slot.count, gm_notes: @cargo_slot.gm_notes, notes: @cargo_slot.notes, ship_id: @cargo_slot.ship_id } }
    end

    assert_redirected_to cargo_slot_path(CargoSlot.last)
  end

  test "should show cargo_slot" do
    get cargo_slot_url(@cargo_slot)
    assert_response :success
  end

  test "should get edit" do
    get edit_cargo_slot_url(@cargo_slot)
    assert_response :success
  end

  test "should update cargo_slot" do
    patch cargo_slot_url(@cargo_slot), params: { cargo_slot: { cargo_id: @cargo_slot.cargo_id, count: @cargo_slot.count, gm_notes: @cargo_slot.gm_notes, notes: @cargo_slot.notes, ship_id: @cargo_slot.ship_id } }
    assert_redirected_to cargo_slot_path(@cargo_slot)
  end

  test "should destroy cargo_slot" do
    assert_difference('CargoSlot.count', -1) do
      delete cargo_slot_url(@cargo_slot)
    end

    assert_redirected_to cargo_slots_path
  end
end
