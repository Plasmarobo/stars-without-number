class CreateEvasionSaveProgressions < ActiveRecord::Migration[5.0]
  def change
    create_table :evasion_save_progressions do |t|
      t.integer :character_class_id
      t.integer :level
      t.integer :evasion_save

      t.timestamps
    end
  end
end
