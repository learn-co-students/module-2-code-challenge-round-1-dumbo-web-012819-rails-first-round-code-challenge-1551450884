class HeroinesController < ApplicationController
 before_action :get_heroine, only: [:show]

def index
  @heroines = Heroine.all
end

 def show
  @powers = @heroine.power
   # grabs instance of heroine from before action method
 end

 def new
   @heroine = Heroine.new
 end

 def create
   @heroine = Heroine.create(heroine_params)
   redirect_to @heroine
   # creates a new heroine and redirects to the show page of the NEW
   # heroine once the user hits submit
 end



private
def get_heroine
  @heroine = Heroine.find(params[:id])
end

def heroine_params
  params.require(:heroine).permit(:name, :super_name, :power_id)
end

end
