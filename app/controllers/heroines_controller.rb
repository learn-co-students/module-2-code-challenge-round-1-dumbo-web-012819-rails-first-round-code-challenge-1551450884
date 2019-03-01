class HeroinesController < ApplicationController
    before_action :get_heroine, only: [:show]

  def index
    @heroines = Heroine.all
  end

  def show
       @powers = Power.all
  end

  def new
      @heroine = Heroine.new
      @powers = Power.all
  end

  def create
      @powers = Power.all
      @heroine = Heroine.create(heroine_params)
      if @heroine.valid?
          redirect_to heroine_path(@heroine)
      else
          render :new
      end
  end


private

    def get_heroine
        @heroine = Heroine.find(params[:id])
    end

    def heroine_params
        params.require(:heroine).permit(:name, :super_name, :power_id)
    end

end
