class EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])

    redirect_to root_url, alert: "Event not found" unless @event.present?
  end

  def create
    @event = Event.create!(slug: SecureRandom.uuid)

    redirect_to event_url @event
  end
end
