require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get items_url
    assert_response :success
  end

  test "should get new" do
    get new_item_url
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post items_url, params: { item: { cost: @item.cost, description: @item.description, encumberance: @item.encumberance, gm_notes: @item.gm_notes, name: @item.name, tech_level: @item.tech_level, uses: @item.uses } }
    end

    assert_redirected_to item_path(Item.last)
  end

  test "should show item" do
    get item_url(@item)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_url(@item)
    assert_response :success
  end

  test "should update item" do
    patch item_url(@item), params: { item: { cost: @item.cost, description: @item.description, encumberance: @item.encumberance, gm_notes: @item.gm_notes, name: @item.name, tech_level: @item.tech_level, uses: @item.uses } }
    assert_redirected_to item_path(@item)
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete item_url(@item)
    end

    assert_redirected_to items_path
  end
end