class StopSerializer < ActiveModel::Serializer
  attributes :id, :time, :train_id, :station_id, :time_exact, :station_name, :time_string
  # has_one :train
end
