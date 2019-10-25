class StationSerializer < ActiveModel::Serializer
  attributes :id, :name, :stops
  has_many :stops 
end
