class Event < ApplicationRecord
  belongs_to :game
  belongs_to :planet
  belongs_to :system
  belongs_to :faction
  belongs_to :player
  belongs_to :ship
  belongs_to :fleet

end
