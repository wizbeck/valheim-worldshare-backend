class ApplicationController < ActionController::API
  before_action :current_user, except: :devise_controller?
  # we need a before action with a private method checking authentication of a user when a request is made,
  # and send an appropriate reponse back
  def current_user
    render json: current_user, status: :ok
  end
end
