class FactionTurn < ApplicationRecord
  belongs_to :faction
  belongs_to :game
end
