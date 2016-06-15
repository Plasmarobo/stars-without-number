class Poi < ApplicationRecord
  belongs_to :orbit
  has_many :events
  
end
