class ClaimPeopleController < ApplicationController
  def update
    @person = Person.find(params[:person_id])
    @person.update!(claim_id: session[:secret_santa_id])

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to @person.event }
    end
  end
end
