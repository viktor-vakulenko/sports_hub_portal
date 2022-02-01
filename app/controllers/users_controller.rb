class UsersController < ApplicationController

  def edit
    @user = current_user
  end

  # @return [Object]
  def update
    @user = current_user
    respond_to do |format|
      # if params[:id] == @user.id
      if @user.update(user_params)
        format.html { flash[:alert] = 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { redirect_to user_path(@user), notice: 'User was not updated.'}
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :avatar)
  end
end
