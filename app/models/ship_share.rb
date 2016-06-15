class ShipShare < ApplicationRecord
  belongs_to :character
  belongs_to :ship
end
