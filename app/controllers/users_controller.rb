class UsersController < ApplicationController
  def show
    check_user
  end

  def new
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end

  def check_user
    @user = User.find(params[:id])
  end
end
