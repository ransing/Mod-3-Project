class StopsController < ApplicationController

    def index 
        @stops = Stop.all 
        # @train = Train.find(params[:train_id])
        # @stops = Stop.all
        # @stops = @train.stops
        render json: @stops, include: "**" 
    end 

    def show
        
        @stop = Stop.find(params[:id])
        render json: @stop, include: "**"
    end 

    def update 
        @stop = Stop.find(params[:id])
        @stop.update(params.permit(:time))
        render json: @stop, include: "**"
    end 


    def create 
        # byebug
        @stop = Stop.create(params.permit(:time, :station_id, :train_id))
        render json: @stop, include: "**"
        
    end 

    def destroy
        @stop = Stop.find(params[:id])
        @stop.destroy
    end 


end
