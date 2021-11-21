# frozen_string_literal: true

class SecretSantaMatcher
  class NoMatchFound < StandardError; end

  def self.run(people)
    new(people).run
  end

  def initialize(people)
    @people = people
    @matches = []
  end

  def run
    people.shuffle!.size.times do
      matches << match(matches.last, people)
    end

    matches.cycle.each_cons(2).take(number_of_pairs)
  end

  private

  attr_accessor :people, :matches

  def match(gift_giver, list)
    secret_santa = list.find { |person| person.name != gift_giver&.name }
    raise NoMatchFound.new("No match found for: #{gift_giver.name}") unless secret_santa

    list.delete(secret_santa) # Remove from list

    secret_santa
  end

  def number_of_pairs
    matches.size
  end
end
