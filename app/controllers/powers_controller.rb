class PowersController < ApplicationController

  before_action :get_powers, only: [:show]


  def index
    @powers = Power.all
  end

  def show
    #grabs instance of power from before action metho
  end

  private
  def get_powers
    @power = Power.find(params[:id])
  end

  def power_params
    params.require(:powers).permit(:name, :description)
  end
end
