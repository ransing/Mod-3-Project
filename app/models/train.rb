class Train < ApplicationRecord
  
  has_many :stops
  has_many :stations, through: :stops
  accepts_nested_attributes_for :stations
  accepts_nested_attributes_for :stops


  # def station_stop
    # stations_array " " stops_array 
  # end 


  def stations_array
    station_arr = []
    self.stations.map do |station|
      station_arr << {
        station_id: station.id,
        name: station.name
      } 
    end 
    station_arr.uniq
  end 

  def station_id_array
    self.stations.map do |station|
      station.id  
    end 
  end 


  def stops_array 
    self.stops.map do |stop|
      stop.time
    end 
  end  




end
