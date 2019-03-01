class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
     if params[:name]
        get_name
    else
      @power = Power.find(params[:id])
  end
  end

  private

  def get_name
      @power = Power.find_by(params[:name])
  end
end
