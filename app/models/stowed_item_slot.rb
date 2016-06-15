class StowedItemSlot < ApplicationRecord
  belongs_to :character
  belongs_to :item_slot
end
