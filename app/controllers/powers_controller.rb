class PowersController < ApplicationController

    def index
        @powers = Power.all
    end

    def show
        @power = Power.find(params[:id])
    end

    def new
        @power = Power.new
    end
    
end
