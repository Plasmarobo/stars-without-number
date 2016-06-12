require 'test_helper'

class ShipWeaponsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ship_weapon = ship_weapons(:one)
  end

  test "should get index" do
    get ship_weapons_url
    assert_response :success
  end

  test "should get new" do
    get new_ship_weapon_url
    assert_response :success
  end

  test "should create ship_weapon" do
    assert_difference('ShipWeapon.count') do
      post ship_weapons_url, params: { ship_weapon: { ammo_id: @ship_weapon.ammo_id, ap: @ship_weapon.ap, cloud: @ship_weapon.cloud, clumsy: @ship_weapon.clumsy, cost: @ship_weapon.cost, damage: @ship_weapon.damage, description: @ship_weapon.description, hardpoint_use: @ship_weapon.hardpoint_use, mass: @ship_weapon.mass, min_hull_class: @ship_weapon.min_hull_class, name: @ship_weapon.name, phase_rating: @ship_weapon.phase_rating, power: @ship_weapon.power, tech_level: @ship_weapon.tech_level } }
    end

    assert_redirected_to ship_weapon_path(ShipWeapon.last)
  end

  test "should show ship_weapon" do
    get ship_weapon_url(@ship_weapon)
    assert_response :success
  end

  test "should get edit" do
    get edit_ship_weapon_url(@ship_weapon)
    assert_response :success
  end

  test "should update ship_weapon" do
    patch ship_weapon_url(@ship_weapon), params: { ship_weapon: { ammo_id: @ship_weapon.ammo_id, ap: @ship_weapon.ap, cloud: @ship_weapon.cloud, clumsy: @ship_weapon.clumsy, cost: @ship_weapon.cost, damage: @ship_weapon.damage, description: @ship_weapon.description, hardpoint_use: @ship_weapon.hardpoint_use, mass: @ship_weapon.mass, min_hull_class: @ship_weapon.min_hull_class, name: @ship_weapon.name, phase_rating: @ship_weapon.phase_rating, power: @ship_weapon.power, tech_level: @ship_weapon.tech_level } }
    assert_redirected_to ship_weapon_path(@ship_weapon)
  end

  test "should destroy ship_weapon" do
    assert_difference('ShipWeapon.count', -1) do
      delete ship_weapon_url(@ship_weapon)
    end

    assert_redirected_to ship_weapons_path
  end
end
