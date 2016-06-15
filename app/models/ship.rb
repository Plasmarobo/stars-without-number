class Ship < ApplicationRecord
  belongs_to :ship_hull
  has_many :ship_shares
  has_many :characters, through: :ship_shares
  has_many :ship_weapon_slots
  has_many :ship_armor_slots
  has_many :ship_fitting_slots
  has_many :cargo_slots
  has_one :fleet, through: :fleet_ship
  has_one :fleet_ship  
end
