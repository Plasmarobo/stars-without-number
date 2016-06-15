class Player < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_many :factions
  has_many :characters

end
