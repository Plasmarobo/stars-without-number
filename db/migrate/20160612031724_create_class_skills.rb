class CreateClassSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :class_skills do |t|
      t.integer :character_class_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
