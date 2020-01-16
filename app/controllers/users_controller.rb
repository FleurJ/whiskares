class UsersController < ApplicationController
  before_action :check_user, only: [:edit, :update, :show]

  def show
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :phone, :introduction)
  end

  def check_user
    @user = User.find(params[:id])
  end
end
