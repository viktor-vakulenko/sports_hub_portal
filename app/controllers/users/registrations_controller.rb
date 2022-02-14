# frozen_string_literal: true

module Users
  class RegistrationsController < Devise::RegistrationsController
    layout 'sessions'

    protected

    def after_update_path_for(resource)
      user_path(resource)
    end
  end
end
