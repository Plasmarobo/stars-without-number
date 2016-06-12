class CreateStowedItemSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :stowed_item_slots do |t|
      t.integer :character_id
      t.integer :item_slot_id

      t.timestamps
    end
  end
end
