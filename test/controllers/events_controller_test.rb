require "test_helper"

class EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    event = events :home_alone

    get event_url(event.slug)
    assert_response :success
  end

  test "should create a new event" do
    assert_difference("Event.count") do
      post events_url
    end

    assert_redirected_to event_url(Event.last.slug)
  end
end
