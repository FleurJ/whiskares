class MissionsController < ApplicationController
  def index
  end

  def show
    @mission = Mission.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def check_mission
    @mission = Mission.find(params[:id])
  end

  def mission_params
    params.require(:mission).permit(:candidates, :fee, :city)
  end
end
