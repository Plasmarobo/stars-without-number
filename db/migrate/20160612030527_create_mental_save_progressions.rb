class CreateMentalSaveProgressions < ActiveRecord::Migration[5.0]
  def change
    create_table :mental_save_progressions do |t|
      t.integer :character_class_id
      t.integer :level
      t.integer :mental_save

      t.timestamps
    end
  end
end
