require 'test_helper'

class FactionAssetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faction_asset = faction_assets(:one)
  end

  test "should get index" do
    get faction_assets_url
    assert_response :success
  end

  test "should get new" do
    get new_faction_asset_url
    assert_response :success
  end

  test "should create faction_asset" do
    assert_difference('FactionAsset.count') do
      post faction_assets_url, params: { faction_asset: { asset_id: @faction_asset.asset_id, disabled: @faction_asset.disabled, faction_id: @faction_asset.faction_id, gm_notes: @faction_asset.gm_notes, hp: @faction_asset.hp, maintained: @faction_asset.maintained, notes: @faction_asset.notes } }
    end

    assert_redirected_to faction_asset_path(FactionAsset.last)
  end

  test "should show faction_asset" do
    get faction_asset_url(@faction_asset)
    assert_response :success
  end

  test "should get edit" do
    get edit_faction_asset_url(@faction_asset)
    assert_response :success
  end

  test "should update faction_asset" do
    patch faction_asset_url(@faction_asset), params: { faction_asset: { asset_id: @faction_asset.asset_id, disabled: @faction_asset.disabled, faction_id: @faction_asset.faction_id, gm_notes: @faction_asset.gm_notes, hp: @faction_asset.hp, maintained: @faction_asset.maintained, notes: @faction_asset.notes } }
    assert_redirected_to faction_asset_path(@faction_asset)
  end

  test "should destroy faction_asset" do
    assert_difference('FactionAsset.count', -1) do
      delete faction_asset_url(@faction_asset)
    end

    assert_redirected_to faction_assets_path
  end
end
