class Character < ApplicationRecord
  belongs_to :character_class
  belongs_to :player
  belongs_to :planet, foreign_key: :homeworld_id
  has_many :weapon_slots
  has_many :armor_slots
  has_many :skill_slots
  has_many :psi_discipline_slots
  belongs_to :background
  belongs_to :training
  has_many :cyberware_slots
  has_many :item_slots
  has_many :readied_item_slots
  has_many :stowed_item_slots
  has_many :ammo_slots
  has_many :vehicle_slots
  has_many :ships, through: :ship_shares
  has_many :ship_shares  
end
