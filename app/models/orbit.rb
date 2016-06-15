class Orbit < ApplicationRecord
  has_one :planet
  has_one :poi
  has_one :satellite

end
