require 'test_helper'

class WeaponsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @weapon = weapons(:one)
  end

  test "should get index" do
    get weapons_url
    assert_response :success
  end

  test "should get new" do
    get new_weapon_url
    assert_response :success
  end

  test "should create weapon" do
    assert_difference('Weapon.count') do
      post weapons_url, params: { weapon: { ammo_efficiency: @weapon.ammo_efficiency, ammo_id: @weapon.ammo_id, attack_attribute: @weapon.attack_attribute, cost: @weapon.cost, damage: @weapon.damage, description: @weapon.description, encumberance: @weapon.encumberance, heavy_weapon: @weapon.heavy_weapon, long_reload: @weapon.long_reload, name: @weapon.name, psitech: @weapon.psitech, range: @weapon.range, tech_level: @weapon.tech_level } }
    end

    assert_redirected_to weapon_path(Weapon.last)
  end

  test "should show weapon" do
    get weapon_url(@weapon)
    assert_response :success
  end

  test "should get edit" do
    get edit_weapon_url(@weapon)
    assert_response :success
  end

  test "should update weapon" do
    patch weapon_url(@weapon), params: { weapon: { ammo_efficiency: @weapon.ammo_efficiency, ammo_id: @weapon.ammo_id, attack_attribute: @weapon.attack_attribute, cost: @weapon.cost, damage: @weapon.damage, description: @weapon.description, encumberance: @weapon.encumberance, heavy_weapon: @weapon.heavy_weapon, long_reload: @weapon.long_reload, name: @weapon.name, psitech: @weapon.psitech, range: @weapon.range, tech_level: @weapon.tech_level } }
    assert_redirected_to weapon_path(@weapon)
  end

  test "should destroy weapon" do
    assert_difference('Weapon.count', -1) do
      delete weapon_url(@weapon)
    end

    assert_redirected_to weapons_path
  end
end
