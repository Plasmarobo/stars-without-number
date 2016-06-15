class Planet < ApplicationRecord
  belongs_to :system
  has_many :locations
  has_many :factions
  has_many :faction_assets
  has_many :events
  has_many :fleets
  has_many :ships, through: :fleets
  has_many :tags, through: :planet_tags
end
