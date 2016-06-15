class Tag < ApplicationRecord
  has_many :planets, through: :planet_tags
  has_many :factions, through: :faction_tags

end
