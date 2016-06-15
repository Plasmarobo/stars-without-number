class Background < ApplicationRecord
  has_many :background_skills
  has_many :skills, through: :background_skill

end
