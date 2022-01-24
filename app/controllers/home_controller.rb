class HomeController < ApplicationController
  before_action :set_homepage, only: %i[show edit update destroy]
  # skip_before_action :authenticate_user!

  def index
    @homepage = Home.new
  end

  def set_homepage
    @homepage = Home.find(params[:id])
  end

  def edit
  end

end
