class ApplicationController < ActionController::Base
  before_action :set_secret_santa_id

  private

  def set_secret_santa_id
    session[:secret_santa_id] ||= SecureRandom.uuid
  end
end
