require "test_helper"

class DrawNamesControllerTest < ActionDispatch::IntegrationTest
  test "draw names set random secret santa to each participant" do
    event = events :home_alone

    jim = people :jim
    jan = people :jan
    michael = people :michael

    assert_nil jim.secret_santa
    assert_nil jan.secret_santa
    assert_nil michael.secret_santa

    put draw_names_event_url(event)

    assert_equal ["Michael", "Jim", "Jan"].sort, event.persons.pluck(:secret_santa).sort
  end
end
