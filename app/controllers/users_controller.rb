class UsersController < ApplicationController

  def create

  end

  def edit
    @user = current_user
  end

  def update

  end

  # private
  #
  # def user_params
  #   params.require(:user).permit(:x, :y, :z)
  # end
end
