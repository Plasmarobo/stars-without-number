class ShipWeaponSlot < ApplicationRecord
  belongs_to :ship_weapon
  belongs_to :ship
  belongs_to :ammo_slot
end
