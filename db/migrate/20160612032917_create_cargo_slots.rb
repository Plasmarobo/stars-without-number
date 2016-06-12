class CreateCargoSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :cargo_slots do |t|
      t.integer :ship_id
      t.integer :cargo_id
      t.integer :count
      t.string :notes
      t.string :gm_notes

      t.timestamps
    end
  end
end
