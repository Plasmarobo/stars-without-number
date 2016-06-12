require 'test_helper'

class FactionTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faction_tag = faction_tags(:one)
  end

  test "should get index" do
    get faction_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_faction_tag_url
    assert_response :success
  end

  test "should create faction_tag" do
    assert_difference('FactionTag.count') do
      post faction_tags_url, params: { faction_tag: { faction_id: @faction_tag.faction_id, tag_id: @faction_tag.tag_id } }
    end

    assert_redirected_to faction_tag_path(FactionTag.last)
  end

  test "should show faction_tag" do
    get faction_tag_url(@faction_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_faction_tag_url(@faction_tag)
    assert_response :success
  end

  test "should update faction_tag" do
    patch faction_tag_url(@faction_tag), params: { faction_tag: { faction_id: @faction_tag.faction_id, tag_id: @faction_tag.tag_id } }
    assert_redirected_to faction_tag_path(@faction_tag)
  end

  test "should destroy faction_tag" do
    assert_difference('FactionTag.count', -1) do
      delete faction_tag_url(@faction_tag)
    end

    assert_redirected_to faction_tags_path
  end
end
