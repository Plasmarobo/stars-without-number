require 'test_helper'

class CharactersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    get characters_url
    assert_response :success
  end

  test "should get new" do
    get new_character_url
    assert_response :success
  end

  test "should create character" do
    assert_difference('Character.count') do
      post characters_url, params: { character: { background_id: @character.background_id, charater_class_id: @character.charater_class_id, charisma: @character.charisma, constitution: @character.constitution, credits: @character.credits, dexterity: @character.dexterity, gm_notes: @character.gm_notes, homeworld_id: @character.homeworld_id, hp: @character.hp, intelligence: @character.intelligence, level: @character.level, max_hp: @character.max_hp, max_pp: @character.max_pp, notes: @character.notes, player_id: @character.player_id, pp: @character.pp, skill_points: @character.skill_points, strength: @character.strength, system_strain: @character.system_strain, training_id: @character.training_id, wisdom: @character.wisdom, xp: @character.xp } }
    end

    assert_redirected_to character_path(Character.last)
  end

  test "should show character" do
    get character_url(@character)
    assert_response :success
  end

  test "should get edit" do
    get edit_character_url(@character)
    assert_response :success
  end

  test "should update character" do
    patch character_url(@character), params: { character: { background_id: @character.background_id, charater_class_id: @character.charater_class_id, charisma: @character.charisma, constitution: @character.constitution, credits: @character.credits, dexterity: @character.dexterity, gm_notes: @character.gm_notes, homeworld_id: @character.homeworld_id, hp: @character.hp, intelligence: @character.intelligence, level: @character.level, max_hp: @character.max_hp, max_pp: @character.max_pp, notes: @character.notes, player_id: @character.player_id, pp: @character.pp, skill_points: @character.skill_points, strength: @character.strength, system_strain: @character.system_strain, training_id: @character.training_id, wisdom: @character.wisdom, xp: @character.xp } }
    assert_redirected_to character_path(@character)
  end

  test "should destroy character" do
    assert_difference('Character.count', -1) do
      delete character_url(@character)
    end

    assert_redirected_to characters_path
  end
end
