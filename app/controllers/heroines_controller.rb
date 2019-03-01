class HeroinesController < ApplicationController

  before_action :get_heroine, only: [:show]

  def index
    @search_off = true
    @heroines = Heroine.all
  end

  def search
    if params[:q] != nil
      @heroines = Heroine.with_super_power(params[:q])
      if @heroines.count > 0
        @hero_search = "Heros found with that power"
      else
        @hero_search = "No heros found with that power."
      end
      @search_off = false
    else
      @search_off = true
      @heroines = Heroine.all
    end
    render :index
  end

  def show
  end

  def new
    @heroine = Heroine.new
    common_requirements
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.valid?
      @heroine.save
      redirect_to @heroine
    else
      common_requirements
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

  def common_requirements
    @powers = Power.all
  end

end
