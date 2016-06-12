require 'test_helper'

class PlaentTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plaent_tag = plaent_tags(:one)
  end

  test "should get index" do
    get plaent_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_plaent_tag_url
    assert_response :success
  end

  test "should create plaent_tag" do
    assert_difference('PlaentTag.count') do
      post plaent_tags_url, params: { plaent_tag: { planet_id: @plaent_tag.planet_id, tag_id: @plaent_tag.tag_id } }
    end

    assert_redirected_to plaent_tag_path(PlaentTag.last)
  end

  test "should show plaent_tag" do
    get plaent_tag_url(@plaent_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_plaent_tag_url(@plaent_tag)
    assert_response :success
  end

  test "should update plaent_tag" do
    patch plaent_tag_url(@plaent_tag), params: { plaent_tag: { planet_id: @plaent_tag.planet_id, tag_id: @plaent_tag.tag_id } }
    assert_redirected_to plaent_tag_path(@plaent_tag)
  end

  test "should destroy plaent_tag" do
    assert_difference('PlaentTag.count', -1) do
      delete plaent_tag_url(@plaent_tag)
    end

    assert_redirected_to plaent_tags_path
  end
end
