class HeroinesController < ApplicationController
  before_action :get_heroine, only: [:show, :edit, :update]
  def index
    @heroines = if params[:true]
      Heroine.where('name LIKE ?', "%#{params[:heroine]}%")
    else
      Heroine.all
    end
  end

  def show
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

  def edit
  end

  def update
    if @heroine.update(heroine_params)
      redirect_to @heroine
    else
      render :edit
    end
  end
  private
  def get_heroine
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id, :heroine)
  end
end
