class Station < ApplicationRecord
    has_many :stops
    has_many :trains, through: :stops 
end
