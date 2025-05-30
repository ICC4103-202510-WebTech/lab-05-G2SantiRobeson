class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, unless: :devise_controller?
  authorize_resource unless: :devise_controller?

  rescue_from CanCan::AccessDenied do |e|
    redirect_to root_path, alert: "You do not have permision to #{e.action} this."
  end
  

  protected

  def configure_permitted_parameters #For permit first_name and last_name
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end
end
