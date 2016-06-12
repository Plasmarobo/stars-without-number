require 'test_helper'

class FactionActionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faction_action = faction_actions(:one)
  end

  test "should get index" do
    get faction_actions_url
    assert_response :success
  end

  test "should get new" do
    get new_faction_action_url
    assert_response :success
  end

  test "should create faction_action" do
    assert_difference('FactionAction.count') do
      post faction_actions_url, params: { faction_action: { action: @faction_action.action, faction_turn_id: @faction_action.faction_turn_id, free: @faction_action.free } }
    end

    assert_redirected_to faction_action_path(FactionAction.last)
  end

  test "should show faction_action" do
    get faction_action_url(@faction_action)
    assert_response :success
  end

  test "should get edit" do
    get edit_faction_action_url(@faction_action)
    assert_response :success
  end

  test "should update faction_action" do
    patch faction_action_url(@faction_action), params: { faction_action: { action: @faction_action.action, faction_turn_id: @faction_action.faction_turn_id, free: @faction_action.free } }
    assert_redirected_to faction_action_path(@faction_action)
  end

  test "should destroy faction_action" do
    assert_difference('FactionAction.count', -1) do
      delete faction_action_url(@faction_action)
    end

    assert_redirected_to faction_actions_path
  end
end
