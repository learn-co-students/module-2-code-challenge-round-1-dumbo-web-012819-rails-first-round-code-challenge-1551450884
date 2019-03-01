class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
    if params[:power_name]
      @heroines = Heroine.all.select {|heroine| heroine.power.name == params[:power_name] }
    else
      @heroines = Heroine.all
    end
  end

  def show
    get_heroine
  end

  def new
    @heroine = Heroine.new
  end
  
  def create
    @heroine = Heroine.create(heroine_params)
    if @heroine.valid?
      redirect_to @heroine
    else
      render :new
    end
  end

private

  def get_heroine
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id, :power_name)
  end

end
