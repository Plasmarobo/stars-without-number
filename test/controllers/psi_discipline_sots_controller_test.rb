require 'test_helper'

class PsiDisciplineSotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @psi_discipline_sot = psi_discipline_sots(:one)
  end

  test "should get index" do
    get psi_discipline_sots_url
    assert_response :success
  end

  test "should get new" do
    get new_psi_discipline_sot_url
    assert_response :success
  end

  test "should create psi_discipline_sot" do
    assert_difference('PsiDisciplineSot.count') do
      post psi_discipline_sots_url, params: { psi_discipline_sot: { character_id: @psi_discipline_sot.character_id, psi_discipline_id: @psi_discipline_sot.psi_discipline_id } }
    end

    assert_redirected_to psi_discipline_sot_path(PsiDisciplineSot.last)
  end

  test "should show psi_discipline_sot" do
    get psi_discipline_sot_url(@psi_discipline_sot)
    assert_response :success
  end

  test "should get edit" do
    get edit_psi_discipline_sot_url(@psi_discipline_sot)
    assert_response :success
  end

  test "should update psi_discipline_sot" do
    patch psi_discipline_sot_url(@psi_discipline_sot), params: { psi_discipline_sot: { character_id: @psi_discipline_sot.character_id, psi_discipline_id: @psi_discipline_sot.psi_discipline_id } }
    assert_redirected_to psi_discipline_sot_path(@psi_discipline_sot)
  end

  test "should destroy psi_discipline_sot" do
    assert_difference('PsiDisciplineSot.count', -1) do
      delete psi_discipline_sot_url(@psi_discipline_sot)
    end

    assert_redirected_to psi_discipline_sots_path
  end
end
