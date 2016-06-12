require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url
    assert_response :success
  end

  test "should get new" do
    get new_event_url
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post events_url, params: { event: { body: @event.body, faction_id: @event.faction_id, fleet_id: @event.fleet_id, npc_id: @event.npc_id, planet_id: @event.planet_id, player_id: @event.player_id, ship_id: @event.ship_id, system_id: @event.system_id, tags: @event.tags, title: @event.title, x: @event.x, y: @event.y } }
    end

    assert_redirected_to event_path(Event.last)
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { body: @event.body, faction_id: @event.faction_id, fleet_id: @event.fleet_id, npc_id: @event.npc_id, planet_id: @event.planet_id, player_id: @event.player_id, ship_id: @event.ship_id, system_id: @event.system_id, tags: @event.tags, title: @event.title, x: @event.x, y: @event.y } }
    assert_redirected_to event_path(@event)
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_path
  end
end
