class Game < ApplicationRecord

  has_one :sector
  belongs_to :gm, class_name: "User", foreign_key: :gm_id
  has_many :players
  has_many :events
end
