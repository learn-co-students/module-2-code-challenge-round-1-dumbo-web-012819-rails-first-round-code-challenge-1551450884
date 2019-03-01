class HeroinesController < ApplicationController
  
  before_action :get_heroines, only: [:show, :update, :create]

  def index
  	@heroines = Heroine.all
  end

  def show
  	
  end

  def new
  	@heroine = Heroine.new
  end

  def create
  	@heroine = Heroine.create(heroine_params)

  	redirect_to heroine_path(@heroine)
    # if @heroine.valid?
      
    # else
    #   render :new
    # end
  end


  private

  def heroine_params
	params.require(:heroine).permit(:name, :super_name, :power_id)
  end

  def get_heroines
  	# byebug
  	@heroine = Heroine.find(params[:id])

  end
end
