require "test_helper"

class SecretSantaMatcherTest < ActiveSupport::TestCase
  test "match people" do
    people = [people(:jim), people(:pam), people(:michael)]
    matches = SecretSantaMatcher.new(people).run

    assert_equal 3, matches.size

    matches.each do |secret_santa, gift_receiver|
      assert secret_santa != gift_receiver
    end
  end
end
