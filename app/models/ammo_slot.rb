class AmmoSlot < ApplicationRecord
  belongs_to :character
  belongs_to :weapon_slot
  belongs_to :ship_weapon_slot
  belongs_to :item_slot
  belongs_to :cargo_slot

end
