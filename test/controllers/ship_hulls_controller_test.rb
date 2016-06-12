require 'test_helper'

class ShipHullsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ship_hull = ship_hulls(:one)
  end

  test "should get index" do
    get ship_hulls_url
    assert_response :success
  end

  test "should get new" do
    get new_ship_hull_url
    assert_response :success
  end

  test "should create ship_hull" do
    assert_difference('ShipHull.count') do
      post ship_hulls_url, params: { ship_hull: { ac: @ship_hull.ac, armor: @ship_hull.armor, cost: @ship_hull.cost, description: @ship_hull.description, hardpoints: @ship_hull.hardpoints, hull_class: @ship_hull.hull_class, manufacturerer: @ship_hull.manufacturerer, max_crew: @ship_hull.max_crew, max_hp: @ship_hull.max_hp, max_mass: @ship_hull.max_mass, max_power: @ship_hull.max_power, min_crew: @ship_hull.min_crew, name: @ship_hull.name, speed: @ship_hull.speed } }
    end

    assert_redirected_to ship_hull_path(ShipHull.last)
  end

  test "should show ship_hull" do
    get ship_hull_url(@ship_hull)
    assert_response :success
  end

  test "should get edit" do
    get edit_ship_hull_url(@ship_hull)
    assert_response :success
  end

  test "should update ship_hull" do
    patch ship_hull_url(@ship_hull), params: { ship_hull: { ac: @ship_hull.ac, armor: @ship_hull.armor, cost: @ship_hull.cost, description: @ship_hull.description, hardpoints: @ship_hull.hardpoints, hull_class: @ship_hull.hull_class, manufacturerer: @ship_hull.manufacturerer, max_crew: @ship_hull.max_crew, max_hp: @ship_hull.max_hp, max_mass: @ship_hull.max_mass, max_power: @ship_hull.max_power, min_crew: @ship_hull.min_crew, name: @ship_hull.name, speed: @ship_hull.speed } }
    assert_redirected_to ship_hull_path(@ship_hull)
  end

  test "should destroy ship_hull" do
    assert_difference('ShipHull.count', -1) do
      delete ship_hull_url(@ship_hull)
    end

    assert_redirected_to ship_hulls_path
  end
end
