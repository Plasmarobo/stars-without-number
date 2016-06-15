class Vehicle < ApplicationRecord
  has_many :vehicle_slots
  has_many :ships, through: :vehicle_slots
  has_many :characters, through: :vehicle_slots
end
