class Fleet < ApplicationRecord
  belongs_to :system
  belongs_to :planet
  belongs_to :poi
  belongs_to :faction
  has_many :fleet_ships
  has_many :ships, through: :fleet_ships
  
end
