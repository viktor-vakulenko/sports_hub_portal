# frozen_string_literal: true

class HomeController < ApplicationController
  before_action :set_homepage, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!

  def index
    @categories = Category.all
    @most_popular_articles = Article.all.order('visit_counter DESC').limit(3)
  end

  # def set_homepage
  #   @homepage = Home.find(params[:id])
  # end
  #
  # def edit
  # end

  def show; end
end
