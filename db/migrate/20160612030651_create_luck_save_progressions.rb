class CreateLuckSaveProgressions < ActiveRecord::Migration[5.0]
  def change
    create_table :luck_save_progressions do |t|
      t.integer :character_class_id
      t.integer :level
      t.integer :luck_save

      t.timestamps
    end
  end
end
