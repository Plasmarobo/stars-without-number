require 'test_helper'

class CyberwaresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cyberware = cyberwares(:one)
  end

  test "should get index" do
    get cyberwares_url
    assert_response :success
  end

  test "should get new" do
    get new_cyberware_url
    assert_response :success
  end

  test "should create cyberware" do
    assert_difference('Cyberware.count') do
      post cyberwares_url, params: { cyberware: { cost: @cyberware.cost, description: @cyberware.description, name: @cyberware.name, system_strain: @cyberware.system_strain, tech_level: @cyberware.tech_level } }
    end

    assert_redirected_to cyberware_path(Cyberware.last)
  end

  test "should show cyberware" do
    get cyberware_url(@cyberware)
    assert_response :success
  end

  test "should get edit" do
    get edit_cyberware_url(@cyberware)
    assert_response :success
  end

  test "should update cyberware" do
    patch cyberware_url(@cyberware), params: { cyberware: { cost: @cyberware.cost, description: @cyberware.description, name: @cyberware.name, system_strain: @cyberware.system_strain, tech_level: @cyberware.tech_level } }
    assert_redirected_to cyberware_path(@cyberware)
  end

  test "should destroy cyberware" do
    assert_difference('Cyberware.count', -1) do
      delete cyberware_url(@cyberware)
    end

    assert_redirected_to cyberwares_path
  end
end
