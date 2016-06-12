require 'test_helper'

class ShipFittingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ship_fitting = ship_fittings(:one)
  end

  test "should get index" do
    get ship_fittings_url
    assert_response :success
  end

  test "should get new" do
    get new_ship_fitting_url
    assert_response :success
  end

  test "should create ship_fitting" do
    assert_difference('ShipFitting.count') do
      post ship_fittings_url, params: { ship_fitting: { cost: @ship_fitting.cost, description: @ship_fitting.description, gm_notes: @ship_fitting.gm_notes, mass: @ship_fitting.mass, max_hull_class: @ship_fitting.max_hull_class, min_hull_class: @ship_fitting.min_hull_class, name: @ship_fitting.name, notes: @ship_fitting.notes, power: @ship_fitting.power, tech_level: @ship_fitting.tech_level } }
    end

    assert_redirected_to ship_fitting_path(ShipFitting.last)
  end

  test "should show ship_fitting" do
    get ship_fitting_url(@ship_fitting)
    assert_response :success
  end

  test "should get edit" do
    get edit_ship_fitting_url(@ship_fitting)
    assert_response :success
  end

  test "should update ship_fitting" do
    patch ship_fitting_url(@ship_fitting), params: { ship_fitting: { cost: @ship_fitting.cost, description: @ship_fitting.description, gm_notes: @ship_fitting.gm_notes, mass: @ship_fitting.mass, max_hull_class: @ship_fitting.max_hull_class, min_hull_class: @ship_fitting.min_hull_class, name: @ship_fitting.name, notes: @ship_fitting.notes, power: @ship_fitting.power, tech_level: @ship_fitting.tech_level } }
    assert_redirected_to ship_fitting_path(@ship_fitting)
  end

  test "should destroy ship_fitting" do
    assert_difference('ShipFitting.count', -1) do
      delete ship_fitting_url(@ship_fitting)
    end

    assert_redirected_to ship_fittings_path
  end
end
