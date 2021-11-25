require "test_helper"

class ClaimPeopleControllerTest < ActionDispatch::IntegrationTest
  test "claim person" do
    jim = people :jim

    refute  jim.claimed?
    put claim_people_url(jim)
    assert jim.reload.claimed?
  end
end
