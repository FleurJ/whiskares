class AnimalsController < ApplicationController
  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.user = current_user
    @animal.save

    redirect_to user_path(current_user)
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    @animal = Animal.find(params[:id])
    if @animal.user == current_user
      @animal.update(animal_params)
      redirect_to user_path(current_user)
    else
      redirect_to user_path(current_user)
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    if @animal.user == current_user
      @animal.destroy
      redirect_to user_path(current_user)
    else
      redirect_to user_path(current_user)
    end
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :species, :dangerosity, :needs, :photo)
  end
end
