class Satellite < ApplicationRecord
  belongs_to :planet
  belongs_to :poi
  belongs_to :orbit

end
