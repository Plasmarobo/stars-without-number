require 'test_helper'

class PsiDisciplineSlotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @psi_discipline_slot = psi_discipline_slots(:one)
  end

  test "should get index" do
    get psi_discipline_slots_url
    assert_response :success
  end

  test "should get new" do
    get new_psi_discipline_slot_url
    assert_response :success
  end

  test "should create psi_discipline_slot" do
    assert_difference('PsiDisciplineSlot.count') do
      post psi_discipline_slots_url, params: { psi_discipline_slot: { character_id: @psi_discipline_slot.character_id, psi_discipline_id: @psi_discipline_slot.psi_discipline_id } }
    end

    assert_redirected_to psi_discipline_slot_path(PsiDisciplineSlot.last)
  end

  test "should show psi_discipline_slot" do
    get psi_discipline_slot_url(@psi_discipline_slot)
    assert_response :success
  end

  test "should get edit" do
    get edit_psi_discipline_slot_url(@psi_discipline_slot)
    assert_response :success
  end

  test "should update psi_discipline_slot" do
    patch psi_discipline_slot_url(@psi_discipline_slot), params: { psi_discipline_slot: { character_id: @psi_discipline_slot.character_id, psi_discipline_id: @psi_discipline_slot.psi_discipline_id } }
    assert_redirected_to psi_discipline_slot_path(@psi_discipline_slot)
  end

  test "should destroy psi_discipline_slot" do
    assert_difference('PsiDisciplineSlot.count', -1) do
      delete psi_discipline_slot_url(@psi_discipline_slot)
    end

    assert_redirected_to psi_discipline_slots_path
  end
end
