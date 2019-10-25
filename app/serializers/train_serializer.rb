class TrainSerializer < ActiveModel::Serializer
  attributes :id, :name, :stations_array, :station_id_array
  # , :stops, :stations_array, :stations, :stops_array, :station_id_array
  # has_one :station
  # has_many :stations, through: :stops
  has_many :stops
end
