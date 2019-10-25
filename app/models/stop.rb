class Stop < ApplicationRecord
  belongs_to :train
  belongs_to :station
  # validates: :time, uniqueness: true


  def station_name
    self.station.name
  end


  def time_string
    self.time.strftime("%H:%m")
  end


  def time_exact
    a = "#{self.time}"
    # a.chars.last(12).join
    a.to_s.chars.last(12).join
    # return b
    # "#{self.time}"
  end 

  





end
