class ArmorSlot < ApplicationRecord
  belongs_to :armor
  belongs_to :character
  belongs_to :ammo_slot
  belongs_to :item
end
