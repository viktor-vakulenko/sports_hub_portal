class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  before_action :set_categories
  before_action :set_breadcrumbs
  layout :determine_layout

  def set_categories
    @articles = Article.all
    @categories = Category.all
    @parent_categories = Category.where(parent_id: nil)
    @sub_categories = Category.where.not(parent_id: nil)
  end

  def after_sign_in_path_for(resource)
    root_path
  end

  protect_from_forgery with: :exception

  def is_admin?
    if user_signed_in?
      redirect_to root_path unless current_user.admin
    end
  end

  # @param [FalseClass] current
  def add_breadcrumbs(label, path, current = false)
    @breadcrumbs << {
      label: label,
      path: path,
      current: current
    }
  end
  def set_breadcrumbs
    @breadcrumbs = []
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :email, :password, :current_password) }
  end

  private

  def determine_layout
    if user_signed_in? && current_user.admin?
      'admin'
    else
      'application'
    end
  end

  def authorize_admin
    redirect_to root_path, status: 401, alert: 'NOT have permissions for edit' unless current_user.admin
  end
end
