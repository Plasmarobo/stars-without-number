class SkillSlot < ApplicationRecord
  belongs_to :character
  belongs_to :background
  belongs_to :training
  belongs_to :skill

end
