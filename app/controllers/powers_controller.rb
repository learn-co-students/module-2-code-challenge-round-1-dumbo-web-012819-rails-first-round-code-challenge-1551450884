class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
      @power = Heroine.find(params[:id]).power
  end
end
