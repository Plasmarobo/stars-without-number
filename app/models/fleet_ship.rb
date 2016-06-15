class FleetShip < ApplicationRecord
  belongs_to :ship
  belongs_to :fleet
end
