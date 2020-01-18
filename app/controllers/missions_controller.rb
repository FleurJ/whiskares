class MissionsController < ApplicationController
  before_action :check_mission, only: [:update, :edit, :show]

  def index
    @missions = Mission.all
  end

  def show
  end

  def new
    @mission = Mission.new
  end

  def create
  @mission = Mission.new(mission_params)
  if @mission.save
    redirect_to animal_mission_path(@mission)
  else
    render 'new'
  end
  end

  def edit
  end

  def update
    @mission.save
  end

  def destroy
  end

  private

  def check_mission
    @mission = Mission.find(params[:id])
  end

  def mission_params
    params.require(:mission).permit(:candidates, :fee, :city, :animal, :start_date, :end_date)
  end
end
