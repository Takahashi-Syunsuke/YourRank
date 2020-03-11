class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :profile, :image])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :profile, :image])
  end

  before_action :basic_auth

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == Rails.application.credentials[:basic_auth][:basic_auth_user] && password == Rails.application.credentials[:basic_auth][:basic_auth_password]
    end
  end

end