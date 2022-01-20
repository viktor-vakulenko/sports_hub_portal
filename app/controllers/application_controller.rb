class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  layout :determine_layout

  def after_sign_in_path_for(resource)
    root_path
  end

  protect_from_forgery with: :exception

  def is_admin?
    if user_signed_in?
      redirect_to root_path unless current_user.admin
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :email, :password, :current_password) }
  end

  private

  def determine_layout
    current_user.admin ? 'admin' : 'application'
  end
end
