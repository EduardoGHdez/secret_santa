require "test_helper"

class PersonsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    event = events :home_alone

    get new_event_person_url(event)
    assert_response :success
  end

  test "should create new person" do
    event = events :home_alone

    assert_difference("Person.count") do
      post "/events/#{event.id}/people", params: { person: { name: "Michael" } }
    end
  end
end
