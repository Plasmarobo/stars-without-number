class ShipFitting < ApplicationRecord
  has_many :ship_fitting_slots
  has_many :ships, through: :ship_fitting_slots
end
