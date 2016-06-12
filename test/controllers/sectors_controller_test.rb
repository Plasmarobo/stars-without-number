require 'test_helper'

class SectorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sector = sectors(:one)
  end

  test "should get index" do
    get sectors_url
    assert_response :success
  end

  test "should get new" do
    get new_sector_url
    assert_response :success
  end

  test "should create sector" do
    assert_difference('Sector.count') do
      post sectors_url, params: { sector: { height: @sector.height, image_src: @sector.image_src, name: @sector.name, seed: @sector.seed, width: @sector.width } }
    end

    assert_redirected_to sector_path(Sector.last)
  end

  test "should show sector" do
    get sector_url(@sector)
    assert_response :success
  end

  test "should get edit" do
    get edit_sector_url(@sector)
    assert_response :success
  end

  test "should update sector" do
    patch sector_url(@sector), params: { sector: { height: @sector.height, image_src: @sector.image_src, name: @sector.name, seed: @sector.seed, width: @sector.width } }
    assert_redirected_to sector_path(@sector)
  end

  test "should destroy sector" do
    assert_difference('Sector.count', -1) do
      delete sector_url(@sector)
    end

    assert_redirected_to sectors_path
  end
end
