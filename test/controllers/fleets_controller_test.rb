require 'test_helper'

class FleetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fleet = fleets(:one)
  end

  test "should get index" do
    get fleets_url
    assert_response :success
  end

  test "should get new" do
    get new_fleet_url
    assert_response :success
  end

  test "should create fleet" do
    assert_difference('Fleet.count') do
      post fleets_url, params: { fleet: { faction_id: @fleet.faction_id, planet_id: @fleet.planet_id, poi_id: @fleet.poi_id, speed: @fleet.speed, system_id: @fleet.system_id } }
    end

    assert_redirected_to fleet_path(Fleet.last)
  end

  test "should show fleet" do
    get fleet_url(@fleet)
    assert_response :success
  end

  test "should get edit" do
    get edit_fleet_url(@fleet)
    assert_response :success
  end

  test "should update fleet" do
    patch fleet_url(@fleet), params: { fleet: { faction_id: @fleet.faction_id, planet_id: @fleet.planet_id, poi_id: @fleet.poi_id, speed: @fleet.speed, system_id: @fleet.system_id } }
    assert_redirected_to fleet_path(@fleet)
  end

  test "should destroy fleet" do
    assert_difference('Fleet.count', -1) do
      delete fleet_url(@fleet)
    end

    assert_redirected_to fleets_path
  end
end
