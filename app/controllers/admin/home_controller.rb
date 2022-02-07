class Admin::HomeController < ApplicationController
  before_action :authorize_admin

end
