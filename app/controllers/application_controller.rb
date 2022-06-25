class ApplicationController < ActionController::API
  before_action :authenticate_user!, except: :devise_controller?

end
