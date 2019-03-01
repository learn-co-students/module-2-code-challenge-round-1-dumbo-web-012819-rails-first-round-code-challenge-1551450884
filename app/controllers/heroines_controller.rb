class HeroinesController < ApplicationController
  before_action :get_heroine, only: [:show]

  def index
    if params[:q]
      @heroines = Heroine.filter_heroines(params[:q])
    else
      @heroines = Heroine.all
    end
  end

  def show
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    @heroine= Heroine.create(heroine_params)
    @powers = Power.all
    if @heroine.valid?
      redirect_to(heroine_path(@heroine))
    else
      render :new
    end
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

  def get_heroine
    @heroine = Heroine.find(params[:id])
  end
end
