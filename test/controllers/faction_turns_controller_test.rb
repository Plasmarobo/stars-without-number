require 'test_helper'

class FactionTurnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faction_turn = faction_turns(:one)
  end

  test "should get index" do
    get faction_turns_url
    assert_response :success
  end

  test "should get new" do
    get new_faction_turn_url
    assert_response :success
  end

  test "should create faction_turn" do
    assert_difference('FactionTurn.count') do
      post faction_turns_url, params: { faction_turn: { game_id: @faction_turn.game_id, order: @faction_turn.order, turn_number: @faction_turn.turn_number } }
    end

    assert_redirected_to faction_turn_path(FactionTurn.last)
  end

  test "should show faction_turn" do
    get faction_turn_url(@faction_turn)
    assert_response :success
  end

  test "should get edit" do
    get edit_faction_turn_url(@faction_turn)
    assert_response :success
  end

  test "should update faction_turn" do
    patch faction_turn_url(@faction_turn), params: { faction_turn: { game_id: @faction_turn.game_id, order: @faction_turn.order, turn_number: @faction_turn.turn_number } }
    assert_redirected_to faction_turn_path(@faction_turn)
  end

  test "should destroy faction_turn" do
    assert_difference('FactionTurn.count', -1) do
      delete faction_turn_url(@faction_turn)
    end

    assert_redirected_to faction_turns_path
  end
end
