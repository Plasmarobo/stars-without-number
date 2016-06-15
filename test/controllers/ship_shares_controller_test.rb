require 'test_helper'

class ShipSharesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ship_share = ship_shares(:one)
  end

  test "should get index" do
    get ship_shares_url
    assert_response :success
  end

  test "should get new" do
    get new_ship_share_url
    assert_response :success
  end

  test "should create ship_share" do
    assert_difference('ShipShare.count') do
      post ship_shares_url, params: { ship_share: { character_id: @ship_share.character_id, shares: @ship_share.shares, ship_id: @ship_share.ship_id } }
    end

    assert_redirected_to ship_share_path(ShipShare.last)
  end

  test "should show ship_share" do
    get ship_share_url(@ship_share)
    assert_response :success
  end

  test "should get edit" do
    get edit_ship_share_url(@ship_share)
    assert_response :success
  end

  test "should update ship_share" do
    patch ship_share_url(@ship_share), params: { ship_share: { character_id: @ship_share.character_id, shares: @ship_share.shares, ship_id: @ship_share.ship_id } }
    assert_redirected_to ship_share_path(@ship_share)
  end

  test "should destroy ship_share" do
    assert_difference('ShipShare.count', -1) do
      delete ship_share_url(@ship_share)
    end

    assert_redirected_to ship_shares_path
  end
end
