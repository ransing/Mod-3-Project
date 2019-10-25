class StationsController < ApplicationController

    def index 
        @stations = Station.all 
        # @train = Train.find(params[:train_id])
        # @stations = @train.stations 
        # @stations = Station.all

        render json: @stations, include: "**"
    end 

    def show 
        @station = Station.find(params[:id])
        render json: @station, include: {trains: {only: [:id, :name]}}
    end 

   








end
