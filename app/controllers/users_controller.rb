class UsersController < ApplicationController
  before_action :check_user, only: [:edit, :update, :show]

  def show
    animals = Animal.all
    @animals = []
    animals.each do |a|
      @animals << a if a.user == current_user
    end
    missions = Mission.all
    @missions = []
    missions.each do |m|
      @missions << m if m.user == current_user
    end
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
