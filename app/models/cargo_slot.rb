class CargoSlot < ApplicationRecord
  belongs_to :ship
  belongs_to :cargo
  belongs_to :item, through: :cargo
end
