class TrainsController < ApplicationController

    def index 
        @trains = Train.all 
        render json: @trains, include: "**"
    end 

    def show
        @train = Train.find(params[:id])
        @stations = @train.stations 
        render json: @train, include: "**"
    end 

    def create 
        @train = Train.create(params.permit(:name))
        render json: @train 
    end 





end
