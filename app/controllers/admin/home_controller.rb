# frozen_string_literal: true

module Admin
  class HomeController < ApplicationController
    before_action :authorize_admin
  end
end
