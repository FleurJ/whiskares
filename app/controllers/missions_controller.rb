class MissionsController < ApplicationController
  before_action :check_mission, only: [:update, :edit, :show]

  attr_reader :candidates_email

  def index
    @missions = Mission.all.order(:created_at)
  end

  def show
  end

  def new
    @animal = Animal.find(params[:animal_id])
    @mission = Mission.new
  end

  def create
    mission = Mission.new(extended_mission_params)
    if mission.save!
      redirect_to animal_mission_path(animal.id, mission.id)
    else

    end
  end

  def edit
  end

  def apply
    @mission = Mission.find(params[:mission_id])
    @mission.candidates['candidates_email'] << current_user.email
    @mission.save
    redirect_to missions_path
  end

  def update
    if @mission.user == current_user
      @mission.update(mission_params)
      redirect_to animal_mission_path(@mission)
    else
      redirect_to animal_mission_path(@mission)
    end
  end

  def destroy
  end

  def candidates_email(mission)
    mission.candidates['candidates_email']
  end

  private

  def check_mission
    @mission = Mission.find(params[:id])
  end

  def mission_params
    params.require(:mission).permit(:candidates, :fee, :city, :animal_id, :start_date, :end_date, :archived)
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
