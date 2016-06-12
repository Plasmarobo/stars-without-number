require 'test_helper'

class FactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faction = factions(:one)
  end

  test "should get index" do
    get factions_url
    assert_response :success
  end

  test "should get new" do
    get new_faction_url
    assert_response :success
  end

  test "should create faction" do
    assert_difference('Faction.count') do
      post factions_url, params: { faction: { cunning: @faction.cunning, faccreds: @faction.faccreds, force: @faction.force, goal_id: @faction.goal_id, goal_progress: @faction.goal_progress, goal_requirement: @faction.goal_requirement, name: @faction.name, planet_id: @faction.planet_id, user_id: @faction.user_id, wealth: @faction.wealth, xp: @faction.xp } }
    end

    assert_redirected_to faction_path(Faction.last)
  end

  test "should show faction" do
    get faction_url(@faction)
    assert_response :success
  end

  test "should get edit" do
    get edit_faction_url(@faction)
    assert_response :success
  end

  test "should update faction" do
    patch faction_url(@faction), params: { faction: { cunning: @faction.cunning, faccreds: @faction.faccreds, force: @faction.force, goal_id: @faction.goal_id, goal_progress: @faction.goal_progress, goal_requirement: @faction.goal_requirement, name: @faction.name, planet_id: @faction.planet_id, user_id: @faction.user_id, wealth: @faction.wealth, xp: @faction.xp } }
    assert_redirected_to faction_path(@faction)
  end

  test "should destroy faction" do
    assert_difference('Faction.count', -1) do
      delete faction_url(@faction)
    end

    assert_redirected_to factions_path
  end
end
