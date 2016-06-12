require 'test_helper'

class VehiclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle = vehicles(:one)
  end

  test "should get index" do
    get vehicles_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_url
    assert_response :success
  end

  test "should create vehicle" do
    assert_difference('Vehicle.count') do
      post vehicles_url, params: { vehicle: { armor: @vehicle.armor, cost: @vehicle.cost, description: @vehicle.description, heavy_armor: @vehicle.heavy_armor, max_crew: @vehicle.max_crew, max_hp: @vehicle.max_hp, name: @vehicle.name, speed: @vehicle.speed, tech_level: @vehicle.tech_level } }
    end

    assert_redirected_to vehicle_path(Vehicle.last)
  end

  test "should show vehicle" do
    get vehicle_url(@vehicle)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_url(@vehicle)
    assert_response :success
  end

  test "should update vehicle" do
    patch vehicle_url(@vehicle), params: { vehicle: { armor: @vehicle.armor, cost: @vehicle.cost, description: @vehicle.description, heavy_armor: @vehicle.heavy_armor, max_crew: @vehicle.max_crew, max_hp: @vehicle.max_hp, name: @vehicle.name, speed: @vehicle.speed, tech_level: @vehicle.tech_level } }
    assert_redirected_to vehicle_path(@vehicle)
  end

  test "should destroy vehicle" do
    assert_difference('Vehicle.count', -1) do
      delete vehicle_url(@vehicle)
    end

    assert_redirected_to vehicles_path
  end
end
