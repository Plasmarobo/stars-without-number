class Weapon < ApplicationRecord
  belongs_to :item, foreign_key: :ammo_id
  
end
