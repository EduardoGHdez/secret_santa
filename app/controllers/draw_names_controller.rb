class DrawNamesController < ApplicationController
  def update
    @event = Event.find(params[:id])

    matches = SecretSantaMatcher.run(@event.persons.to_a)

    matches.each do |gift_receiver, secret_santa|
      gift_receiver.update(secret_santa: secret_santa.name)
    end

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to @event }
    end
  end
end
