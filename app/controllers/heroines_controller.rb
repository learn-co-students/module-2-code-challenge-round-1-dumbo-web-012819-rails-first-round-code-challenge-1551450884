class HeroinesController < ApplicationController
  before_action :get_heroine, only: [:show, :edit, :update]
  def index
    @heroines = Heroine.all
  end
  def show
  end
  def new
    @heroine = Heroine.new
    @power = Power.all
  end
  def edit
    @heroine = Heroine.all
  end
  def create
    @heroine = Heroine.create(heroine_params)
    redirect_to @heroine
  end

  def update
    @heroine.update(heroine_params)
    redirect_to heroine_path(@heroine)
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
  def get_heroine
    @heroine = Heroine.find(params[:id])
  end
end
