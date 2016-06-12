require 'test_helper'

class ShipArmorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ship_armor = ship_armors(:one)
  end

  test "should get index" do
    get ship_armors_url
    assert_response :success
  end

  test "should get new" do
    get new_ship_armor_url
    assert_response :success
  end

  test "should create ship_armor" do
    assert_difference('ShipArmor.count') do
      post ship_armors_url, params: { ship_armor: { ac: @ship_armor.ac, ac_bonus: @ship_armor.ac_bonus, ap_reduction: @ship_armor.ap_reduction, bonus_hp: @ship_armor.bonus_hp, cost: @ship_armor.cost, description: @ship_armor.description, evasion_chance: @ship_armor.evasion_chance, mass: @ship_armor.mass, min_hull_class: @ship_armor.min_hull_class, name: @ship_armor.name, phase_reduction: @ship_armor.phase_reduction, power: @ship_armor.power, speed_penalty: @ship_armor.speed_penalty, tech_level: @ship_armor.tech_level } }
    end

    assert_redirected_to ship_armor_path(ShipArmor.last)
  end

  test "should show ship_armor" do
    get ship_armor_url(@ship_armor)
    assert_response :success
  end

  test "should get edit" do
    get edit_ship_armor_url(@ship_armor)
    assert_response :success
  end

  test "should update ship_armor" do
    patch ship_armor_url(@ship_armor), params: { ship_armor: { ac: @ship_armor.ac, ac_bonus: @ship_armor.ac_bonus, ap_reduction: @ship_armor.ap_reduction, bonus_hp: @ship_armor.bonus_hp, cost: @ship_armor.cost, description: @ship_armor.description, evasion_chance: @ship_armor.evasion_chance, mass: @ship_armor.mass, min_hull_class: @ship_armor.min_hull_class, name: @ship_armor.name, phase_reduction: @ship_armor.phase_reduction, power: @ship_armor.power, speed_penalty: @ship_armor.speed_penalty, tech_level: @ship_armor.tech_level } }
    assert_redirected_to ship_armor_path(@ship_armor)
  end

  test "should destroy ship_armor" do
    assert_difference('ShipArmor.count', -1) do
      delete ship_armor_url(@ship_armor)
    end

    assert_redirected_to ship_armors_path
  end
end
