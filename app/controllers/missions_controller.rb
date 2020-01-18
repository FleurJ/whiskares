class MissionsController < ApplicationController
  before_action :check_mission, only: [:update, :edit, :show]

  def index
    @missions = Mission.all
  end

  def show
  end

  def new
    @animal = Animal.find(params[:animal_id])
    @mission = Mission.new
  end

  def create
    mission = Mission.new!(extended_mission_params)
    if mission.save!
      redirect_to animal_mission_path(animal.id, mission.id)
    else

    end
  end

  def edit
  end

  def update
    @mission.update(mission_params)
    redirect_to animal_mission_path(@mission)
  end

  def destroy
  end

  private

  def check_mission
    @mission = Mission.find(params[:id])
  end

  def mission_params
    params.require(:mission).permit(:candidates, :fee, :city, :animal_id, :start_date, :end_date)
  end

  def extended_mission_params
    mission_params.merge({
      animal: animal,
      user: current_user
    })
  end

  def animal
    Animal.find(params[:animal_id])
  end
end
