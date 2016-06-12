require 'test_helper'

class PlanetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @planet = planets(:one)
  end

  test "should get index" do
    get planets_url
    assert_response :success
  end

  test "should get new" do
    get new_planet_url
    assert_response :success
  end

  test "should create planet" do
    assert_difference('Planet.count') do
      post planets_url, params: { planet: { atmosphere: @planet.atmosphere, biosphere: @planet.biosphere, description: @planet.description, gm_notes: @planet.gm_notes, image_src: @planet.image_src, name: @planet.name, orbit_id: @planet.orbit_id, population: @planet.population, tech_level: @planet.tech_level, temperature: @planet.temperature, type_index: @planet.type_index, x: @planet.x, y: @planet.y } }
    end

    assert_redirected_to planet_path(Planet.last)
  end

  test "should show planet" do
    get planet_url(@planet)
    assert_response :success
  end

  test "should get edit" do
    get edit_planet_url(@planet)
    assert_response :success
  end

  test "should update planet" do
    patch planet_url(@planet), params: { planet: { atmosphere: @planet.atmosphere, biosphere: @planet.biosphere, description: @planet.description, gm_notes: @planet.gm_notes, image_src: @planet.image_src, name: @planet.name, orbit_id: @planet.orbit_id, population: @planet.population, tech_level: @planet.tech_level, temperature: @planet.temperature, type_index: @planet.type_index, x: @planet.x, y: @planet.y } }
    assert_redirected_to planet_path(@planet)
  end

  test "should destroy planet" do
    assert_difference('Planet.count', -1) do
      delete planet_url(@planet)
    end

    assert_redirected_to planets_path
  end
end
