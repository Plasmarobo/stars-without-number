require 'test_helper'

class FleetShipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fleet_ship = fleet_ships(:one)
  end

  test "should get index" do
    get fleet_ships_url
    assert_response :success
  end

  test "should get new" do
    get new_fleet_ship_url
    assert_response :success
  end

  test "should create fleet_ship" do
    assert_difference('FleetShip.count') do
      post fleet_ships_url, params: { fleet_ship: { fleet_id: @fleet_ship.fleet_id, ship_id: @fleet_ship.ship_id } }
    end

    assert_redirected_to fleet_ship_path(FleetShip.last)
  end

  test "should show fleet_ship" do
    get fleet_ship_url(@fleet_ship)
    assert_response :success
  end

  test "should get edit" do
    get edit_fleet_ship_url(@fleet_ship)
    assert_response :success
  end

  test "should update fleet_ship" do
    patch fleet_ship_url(@fleet_ship), params: { fleet_ship: { fleet_id: @fleet_ship.fleet_id, ship_id: @fleet_ship.ship_id } }
    assert_redirected_to fleet_ship_path(@fleet_ship)
  end

  test "should destroy fleet_ship" do
    assert_difference('FleetShip.count', -1) do
      delete fleet_ship_url(@fleet_ship)
    end

    assert_redirected_to fleet_ships_path
  end
end
