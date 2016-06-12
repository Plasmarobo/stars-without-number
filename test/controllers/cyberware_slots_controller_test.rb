require 'test_helper'

class CyberwareSlotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cyberware_slot = cyberware_slots(:one)
  end

  test "should get index" do
    get cyberware_slots_url
    assert_response :success
  end

  test "should get new" do
    get new_cyberware_slot_url
    assert_response :success
  end

  test "should create cyberware_slot" do
    assert_difference('CyberwareSlot.count') do
      post cyberware_slots_url, params: { cyberware_slot: { character_id: @cyberware_slot.character_id, cyberware_id: @cyberware_slot.cyberware_id } }
    end

    assert_redirected_to cyberware_slot_path(CyberwareSlot.last)
  end

  test "should show cyberware_slot" do
    get cyberware_slot_url(@cyberware_slot)
    assert_response :success
  end

  test "should get edit" do
    get edit_cyberware_slot_url(@cyberware_slot)
    assert_response :success
  end

  test "should update cyberware_slot" do
    patch cyberware_slot_url(@cyberware_slot), params: { cyberware_slot: { character_id: @cyberware_slot.character_id, cyberware_id: @cyberware_slot.cyberware_id } }
    assert_redirected_to cyberware_slot_path(@cyberware_slot)
  end

  test "should destroy cyberware_slot" do
    assert_difference('CyberwareSlot.count', -1) do
      delete cyberware_slot_url(@cyberware_slot)
    end

    assert_redirected_to cyberware_slots_path
  end
end
