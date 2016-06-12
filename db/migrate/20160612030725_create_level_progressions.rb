class CreateLevelProgressions < ActiveRecord::Migration[5.0]
  def change
    create_table :level_progressions do |t|
      t.integer :character_class_id
      t.integer :level
      t.integer :xp_requirement

      t.timestamps
    end
  end
end
