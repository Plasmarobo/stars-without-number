class WeaponSlot < ApplicationRecord
  belongs_to :weapon
  belongs_to :ammo_slot
  belongs_to :character
  belongs_to :vehicle
  belongs_to :item
end
