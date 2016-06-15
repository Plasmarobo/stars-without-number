class Location < ApplicationRecord
  belongs_to :planet
  belongs_to :satellite
  belongs_to :poi

end
