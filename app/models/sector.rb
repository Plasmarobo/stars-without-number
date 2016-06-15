class Sector < ApplicationRecord
  has_one :game
  has_many :systems
  has_many :fleets
  has_many :planets, through: :systems
  has_many :ships, through: :fleets
  has_many :events
  has_many :factions
  has_many :pois, through: :systems

end
