# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  layout 'sessions'

  protected

  def after_update_path_for(resource)
    user_path(resource)
  end
end
