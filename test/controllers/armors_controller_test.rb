require 'test_helper'

class ArmorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @armor = armors(:one)
  end

  test "should get index" do
    get armors_url
    assert_response :success
  end

  test "should get new" do
    get new_armor_url
    assert_response :success
  end

  test "should create armor" do
    assert_difference('Armor.count') do
      post armors_url, params: { armor: { ac: @armor.ac, ac_bonus: @armor.ac_bonus, ammo_efficiency: @armor.ammo_efficiency, ammo_id: @armor.ammo_id, cost: @armor.cost, damage_reduction: @armor.damage_reduction, description: @armor.description, encumberance: @armor.encumberance, name: @armor.name, tech_level: @armor.tech_level } }
    end

    assert_redirected_to armor_path(Armor.last)
  end

  test "should show armor" do
    get armor_url(@armor)
    assert_response :success
  end

  test "should get edit" do
    get edit_armor_url(@armor)
    assert_response :success
  end

  test "should update armor" do
    patch armor_url(@armor), params: { armor: { ac: @armor.ac, ac_bonus: @armor.ac_bonus, ammo_efficiency: @armor.ammo_efficiency, ammo_id: @armor.ammo_id, cost: @armor.cost, damage_reduction: @armor.damage_reduction, description: @armor.description, encumberance: @armor.encumberance, name: @armor.name, tech_level: @armor.tech_level } }
    assert_redirected_to armor_path(@armor)
  end

  test "should destroy armor" do
    assert_difference('Armor.count', -1) do
      delete armor_url(@armor)
    end

    assert_redirected_to armors_path
  end
end
