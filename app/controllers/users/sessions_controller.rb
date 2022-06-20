# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  respond_to :json

  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  private

  def respond_with(resource, _opts = {}) # method to set the jwt token on creation of login
    render json: {
      status: { code: 200, message: 'Logged in Successfully!' },
      data: UserSerializer.new(resource).serializable_hash[:data][:attributes]
    }
  end

  def respond_to_destroy # method to clear or revoke authentication of user since they logged out, clear their jwt token
    if current_user
      render json: {
        status: { code: 200, message: 'Successfully logged out.' }
      }, status: :ok
    else
      render json: {
        status: { code: 401, message: 'No active session found.' }
      }, status: :unauthorized
    end
  end
end
