class System < ApplicationRecord
  belongs_to :sector
  has_many :planets
  has_many :pois
  has_many :ships
  has_many :fleets
  has_many :factions
  has_many :faction_assets
  has_many :locations
  has_meny :events

end
