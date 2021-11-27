class PeopleController < ApplicationController
  def index
    @people = event.persons.where(claim_id: session[:secret_santa_id])
  end

  def new
    @person = event.persons.new
  end

  def create
    @person = event.persons.create!(person_params)

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to event }
    end
  end

  private

  def event
    @event ||= Event.find(params[:event_id])
  end

  def person_params
    params.require(:person).permit(:name)
  end
end
