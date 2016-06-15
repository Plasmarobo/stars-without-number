class VehicleSlot < ApplicationRecord
  belongs_to :vehicle
  belongs_to :character
  belongs_to :ship
  
end
