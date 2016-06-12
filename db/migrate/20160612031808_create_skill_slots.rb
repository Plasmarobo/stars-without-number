class CreateSkillSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :skill_slots do |t|
      t.integer :character_id
      t.integer :background_id
      t.integr :training_id
      t.integer :skill_id
      t.integer :rank

      t.timestamps
    end
  end
end
