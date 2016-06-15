class Npc < ApplicationRecord
  belongs_to :character
  belongs_to :faction
  belongs_to :planet
  belongs_to :location
  belongs_to :satellite
  belongs_to :ship
end
