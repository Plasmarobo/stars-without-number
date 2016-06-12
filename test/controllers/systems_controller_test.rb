require 'test_helper'

class SystemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @system = systems(:one)
  end

  test "should get index" do
    get systems_url
    assert_response :success
  end

  test "should get new" do
    get new_system_url
    assert_response :success
  end

  test "should create system" do
    assert_difference('System.count') do
      post systems_url, params: { system: { description: @system.description, gm_notes: @system.gm_notes, name: @system.name, star_size: @system.star_size, star_temperature: @system.star_temperature, x: @system.x, y: @system.y } }
    end

    assert_redirected_to system_path(System.last)
  end

  test "should show system" do
    get system_url(@system)
    assert_response :success
  end

  test "should get edit" do
    get edit_system_url(@system)
    assert_response :success
  end

  test "should update system" do
    patch system_url(@system), params: { system: { description: @system.description, gm_notes: @system.gm_notes, name: @system.name, star_size: @system.star_size, star_temperature: @system.star_temperature, x: @system.x, y: @system.y } }
    assert_redirected_to system_path(@system)
  end

  test "should destroy system" do
    assert_difference('System.count', -1) do
      delete system_url(@system)
    end

    assert_redirected_to systems_path
  end
end
