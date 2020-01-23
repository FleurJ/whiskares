class UsersController < ApplicationController
  before_action :check_user, only: [:edit, :update, :show]
  before_action :authenticate_user!, only: [:edit, :update]

  def show
    animals = Animal.all
    @animals = []
    animals.each do |a|
      if a.user == current_user
        @animals << a
      end
    end
  end

  def edit
  end

  def update
    if @user == current_user
      @user.update(user_params)
      redirect_to user_path(@user)
    else
      redirect_to user_path(@user)
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :phone, :introduction)
  end

  def check_user
    @user = User.find(params[:id])
  end
end
