require 'test_helper'

class OrbitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orbit = orbits(:one)
  end

  test "should get index" do
    get orbits_url
    assert_response :success
  end

  test "should get new" do
    get new_orbit_url
    assert_response :success
  end

  test "should create orbit" do
    assert_difference('Orbit.count') do
      post orbits_url, params: { orbit: { angle: @orbit.angle, distance: @orbit.distance, index: @orbit.index, period: @orbit.period } }
    end

    assert_redirected_to orbit_path(Orbit.last)
  end

  test "should show orbit" do
    get orbit_url(@orbit)
    assert_response :success
  end

  test "should get edit" do
    get edit_orbit_url(@orbit)
    assert_response :success
  end

  test "should update orbit" do
    patch orbit_url(@orbit), params: { orbit: { angle: @orbit.angle, distance: @orbit.distance, index: @orbit.index, period: @orbit.period } }
    assert_redirected_to orbit_path(@orbit)
  end

  test "should destroy orbit" do
    assert_difference('Orbit.count', -1) do
      delete orbit_url(@orbit)
    end

    assert_redirected_to orbits_path
  end
end
