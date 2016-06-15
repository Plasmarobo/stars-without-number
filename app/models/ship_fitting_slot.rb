class ShipFittingSlot < ApplicationRecord
  belongs_to :ship_fitting
  belongs_to :ship
end
