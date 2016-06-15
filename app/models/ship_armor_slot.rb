class ShipArmorSlot < ApplicationRecord
  belongs_to :ship_armor
  belongs_to :ship
  
end
