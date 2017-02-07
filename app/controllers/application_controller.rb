class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  protect_from_forgery with: :null_session, if: -> { request.format.json? }
  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from ActionController::InvalidAuthenticityToken do |exception|
    sign_out_user # Example method that will destroy the user cookies
  end
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :phone_number])
  end

end
