class Skill < ApplicationRecord
  has_many :character_classes, through: :class_skill
  has_many :backgrounds, through: :background_skill
  has_many :trainings, through: :training_skill
  has_many :background_skills
  has_many :training_skills
  has_many :class_skills
end
