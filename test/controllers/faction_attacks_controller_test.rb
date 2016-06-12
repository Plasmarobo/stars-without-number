require 'test_helper'

class FactionAttacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faction_attack = faction_attacks(:one)
  end

  test "should get index" do
    get faction_attacks_url
    assert_response :success
  end

  test "should get new" do
    get new_faction_attack_url
    assert_response :success
  end

  test "should create faction_attack" do
    assert_difference('FactionAttack.count') do
      post faction_attacks_url, params: { faction_attack: { attack: @faction_attack.attack, attack_roll: @faction_attack.attack_roll, attacker_id: @faction_attack.attacker_id, counter: @faction_attack.counter, defender_id: @faction_attack.defender_id, defense: @faction_attack.defense, defense_roll: @faction_attack.defense_roll } }
    end

    assert_redirected_to faction_attack_path(FactionAttack.last)
  end

  test "should show faction_attack" do
    get faction_attack_url(@faction_attack)
    assert_response :success
  end

  test "should get edit" do
    get edit_faction_attack_url(@faction_attack)
    assert_response :success
  end

  test "should update faction_attack" do
    patch faction_attack_url(@faction_attack), params: { faction_attack: { attack: @faction_attack.attack, attack_roll: @faction_attack.attack_roll, attacker_id: @faction_attack.attacker_id, counter: @faction_attack.counter, defender_id: @faction_attack.defender_id, defense: @faction_attack.defense, defense_roll: @faction_attack.defense_roll } }
    assert_redirected_to faction_attack_path(@faction_attack)
  end

  test "should destroy faction_attack" do
    assert_difference('FactionAttack.count', -1) do
      delete faction_attack_url(@faction_attack)
    end

    assert_redirected_to faction_attacks_path
  end
end
