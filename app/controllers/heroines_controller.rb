class HeroinesController < ApplicationController
  def index
  	if params[:search] != nil
    	@heroines = Heroine.search(params[:search])
    else
    	@heroines = Heroine.all
    end
  end

  def show
  	@heroine = Heroine.find(params[:id])
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

  def search_heroines
  	def search_post
  		redirect_to search_heroines_path(params[:q])
	end
  end

  private

  def heroine_params
  	params.require(:heroine).permit(:name, :super_name, :power_id, :search)
  end

end
