class Person < ApplicationRecord
  broadcasts_to :event

  after_update_commit ->(person) do
    broadcast_replace_to(
      person.event,
      target: "#{person.claim_id}_claimed_people_event_#{person.event.id}",
      partial: "events/claimed_people_counter",
      locals: { event: person.event, secret_santa_id: person.claim_id }
    )
  end


  belongs_to :event


  scope :claimed, ->(secret_santa_id) { where(claim_id: secret_santa_id) }

  def claimed?
    claim_id.present?
  end
end
