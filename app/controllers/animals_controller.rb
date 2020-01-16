class AnimalsController < ApplicationController
  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.create(animal_params)

    redirect_to root
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    @animal = Animal.find(params[:id])
    @animal.update(animal_params)

    redirect_to root
  end

  def destroy
    @animal = Animal.find(params[:animal_id])
    @animal.destroy

    redirect_to root
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :species, :dangerosity, :needs, :user)
  end
end
