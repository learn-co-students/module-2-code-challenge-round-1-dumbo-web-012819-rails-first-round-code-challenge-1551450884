class HeroinesController < ApplicationController

  def index
      @heroines = Heroine.all
  end

   def show
       get_heroine
   end

   def new
       @heroine = Heroine.new
       @powers = Power.all
   end

   def create
       @heroine = Heroine.new(heroine_params)
       if @heroine.valid?
           @heroine.save
       else
           @powers = Power.all
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
