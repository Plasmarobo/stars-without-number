class CreatePhysicalSaveProgressions < ActiveRecord::Migration[5.0]
  def change
    create_table :physical_save_progressions do |t|
      t.integer :character_class_id
      t.integer :level
      t.integer :physical_save

      t.timestamps
    end
  end
end
