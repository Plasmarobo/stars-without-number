class CreateTechnologySaveProgressions < ActiveRecord::Migration[5.0]
  def change
    create_table :technology_save_progressions do |t|
      t.integer :character_class_id
      t.integer :level
      t.integer :technology_save

      t.timestamps
    end
  end
end
