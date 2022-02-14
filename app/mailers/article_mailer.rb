# frozen_string_literal: true

class ArticleMailer < ApplicationMailer
  def article_updated_email
    @user = params[:user]
    @article = params[:article]
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
