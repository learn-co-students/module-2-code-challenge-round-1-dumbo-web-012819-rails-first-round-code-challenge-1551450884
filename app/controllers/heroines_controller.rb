class HeroinesController < ApplicationController

    def index
        @heroines = Heroine.all
    end

    def show
        @heroine = Heroine.find(params[:id])
    end

    def new
        @heroine = Heroine.new
    end


    private

    def get_params
        params.require(:heroines).permit(:name, :super_name)
    end


end
