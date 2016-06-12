class CreateItemSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :item_slots do |t|
      t.integer :item_id
      t.integer :character_id
      t.integer :uses
      t.string :notes
      t.string :gm_notes

      t.timestamps
    end
  end
end
