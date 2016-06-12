require 'test_helper'

class AssetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asset = assets(:one)
  end

  test "should get index" do
    get assets_url
    assert_response :success
  end

  test "should get new" do
    get new_asset_url
    assert_response :success
  end

  test "should create asset" do
    assert_difference('Asset.count') do
      post assets_url, params: { asset: { asset_level: @asset.asset_level, asset_type: @asset.asset_type, attack_attribute: @asset.attack_attribute, attack_roll: @asset.attack_roll, attribute_type: @asset.attribute_type, cost: @asset.cost, counter_roll: @asset.counter_roll, defense_attribute: @asset.defense_attribute, max_hp: @asset.max_hp, special: @asset.special, tech_level: @asset.tech_level, upkeep: @asset.upkeep } }
    end

    assert_redirected_to asset_path(Asset.last)
  end

  test "should show asset" do
    get asset_url(@asset)
    assert_response :success
  end

  test "should get edit" do
    get edit_asset_url(@asset)
    assert_response :success
  end

  test "should update asset" do
    patch asset_url(@asset), params: { asset: { asset_level: @asset.asset_level, asset_type: @asset.asset_type, attack_attribute: @asset.attack_attribute, attack_roll: @asset.attack_roll, attribute_type: @asset.attribute_type, cost: @asset.cost, counter_roll: @asset.counter_roll, defense_attribute: @asset.defense_attribute, max_hp: @asset.max_hp, special: @asset.special, tech_level: @asset.tech_level, upkeep: @asset.upkeep } }
    assert_redirected_to asset_path(@asset)
  end

  test "should destroy asset" do
    assert_difference('Asset.count', -1) do
      delete asset_url(@asset)
    end

    assert_redirected_to assets_path
  end
end
