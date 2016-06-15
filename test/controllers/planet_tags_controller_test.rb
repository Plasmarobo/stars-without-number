require 'test_helper'

class PlanetTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @planet_tag = planet_tags(:one)
  end

  test "should get index" do
    get planet_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_planet_tag_url
    assert_response :success
  end

  test "should create planet_tag" do
    assert_difference('PlanetTag.count') do
      post planet_tags_url, params: { planet_tag: { planet_id: @planet_tag.planet_id, tag_id: @planet_tag.tag_id } }
    end

    assert_redirected_to planet_tag_path(PlanetTag.last)
  end

  test "should show planet_tag" do
    get planet_tag_url(@planet_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_planet_tag_url(@planet_tag)
    assert_response :success
  end

  test "should update planet_tag" do
    patch planet_tag_url(@planet_tag), params: { planet_tag: { planet_id: @planet_tag.planet_id, tag_id: @planet_tag.tag_id } }
    assert_redirected_to planet_tag_path(@planet_tag)
  end

  test "should destroy planet_tag" do
    assert_difference('PlanetTag.count', -1) do
      delete planet_tag_url(@planet_tag)
    end

    assert_redirected_to planet_tags_path
  end
end
