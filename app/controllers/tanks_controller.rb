class TanksController < ApplicationController
  before_action :set_tank, only: [:show, :edit, :update, :destroy]

  def index
    @tanks=Tank.all
  end

  def new
    @tank=Tank.new
  end

  def create
    @tank= Tank.new(tank_params)
    if @tank.save
      redirect_to tank_path(@tank)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @tank.update(tank_params)
      redirect_to tank_path(tank)
    else
      render :edit
    end
  end

  def destroy
    @tank.destroy
    redirect_to tanks_path
  end

  private

  def set_tank
    @tank=Tank.find(params[:id])
  end

  def tank_params
    params.require(:tank).permit(:make, :model, :year)
  end
end
