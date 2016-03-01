class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  before_action :configure_permitted_parameters, if: :devise_controller?

  before_filter :authenticate_user!, except: [:index, :show]
respond_to :json
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :phone, :password) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :phone, :password, :password_confirmation, :current_password) }
  end

#HELLLO WORLD!!!!!!!!!
end
