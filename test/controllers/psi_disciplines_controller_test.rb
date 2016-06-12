require 'test_helper'

class PsiDisciplinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @psi_discipline = psi_disciplines(:one)
  end

  test "should get index" do
    get psi_disciplines_url
    assert_response :success
  end

  test "should get new" do
    get new_psi_discipline_url
    assert_response :success
  end

  test "should create psi_discipline" do
    assert_difference('PsiDiscipline.count') do
      post psi_disciplines_url, params: { psi_discipline: { attack: @psi_discipline.attack, cost: @psi_discipline.cost, defense: @psi_discipline.defense, description: @psi_discipline.description, level: @psi_discipline.level, name: @psi_discipline.name, system_strain: @psi_discipline.system_strain } }
    end

    assert_redirected_to psi_discipline_path(PsiDiscipline.last)
  end

  test "should show psi_discipline" do
    get psi_discipline_url(@psi_discipline)
    assert_response :success
  end

  test "should get edit" do
    get edit_psi_discipline_url(@psi_discipline)
    assert_response :success
  end

  test "should update psi_discipline" do
    patch psi_discipline_url(@psi_discipline), params: { psi_discipline: { attack: @psi_discipline.attack, cost: @psi_discipline.cost, defense: @psi_discipline.defense, description: @psi_discipline.description, level: @psi_discipline.level, name: @psi_discipline.name, system_strain: @psi_discipline.system_strain } }
    assert_redirected_to psi_discipline_path(@psi_discipline)
  end

  test "should destroy psi_discipline" do
    assert_difference('PsiDiscipline.count', -1) do
      delete psi_discipline_url(@psi_discipline)
    end

    assert_redirected_to psi_disciplines_path
  end
end
