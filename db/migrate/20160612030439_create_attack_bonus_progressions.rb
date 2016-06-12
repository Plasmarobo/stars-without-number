class CreateAttackBonusProgressions < ActiveRecord::Migration[5.0]
  def change
    create_table :attack_bonus_progressions do |t|
      t.integer :character_class_id
      t.integer :level
      t.integer :attack_bonus

      t.timestamps
    end
  end
end
