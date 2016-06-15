class ShipWeapon < ApplicationRecord
  has_many :ship_weapon_slots
  belongs_to :item, foreign_key: :ammo_id
end
