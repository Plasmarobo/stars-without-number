class Training < ApplicationRecord
  has_many :training_skills
  has_many :skills, through: :training_skills
end
