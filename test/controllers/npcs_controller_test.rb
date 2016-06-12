require 'test_helper'

class NpcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @npc = npcs(:one)
  end

  test "should get index" do
    get npcs_url
    assert_response :success
  end

  test "should get new" do
    get new_npc_url
    assert_response :success
  end

  test "should create npc" do
    assert_difference('Npc.count') do
      post npcs_url, params: { npc: { character_id: @npc.character_id, description: @npc.description, faction_id: @npc.faction_id, gm_notes: @npc.gm_notes, location_id: @npc.location_id, name: @npc.name, notes: @npc.notes, planet_id: @npc.planet_id, poi_id: @npc.poi_id, satellite_id: @npc.satellite_id, ship_id: @npc.ship_id } }
    end

    assert_redirected_to npc_path(Npc.last)
  end

  test "should show npc" do
    get npc_url(@npc)
    assert_response :success
  end

  test "should get edit" do
    get edit_npc_url(@npc)
    assert_response :success
  end

  test "should update npc" do
    patch npc_url(@npc), params: { npc: { character_id: @npc.character_id, description: @npc.description, faction_id: @npc.faction_id, gm_notes: @npc.gm_notes, location_id: @npc.location_id, name: @npc.name, notes: @npc.notes, planet_id: @npc.planet_id, poi_id: @npc.poi_id, satellite_id: @npc.satellite_id, ship_id: @npc.ship_id } }
    assert_redirected_to npc_path(@npc)
  end

  test "should destroy npc" do
    assert_difference('Npc.count', -1) do
      delete npc_url(@npc)
    end

    assert_redirected_to npcs_path
  end
end
