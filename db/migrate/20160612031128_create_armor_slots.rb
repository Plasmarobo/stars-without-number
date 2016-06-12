class CreateArmorSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :armor_slots do |t|
      t.integer :armor_id
      t.integer :character_id
      t.integer :ammo_slot_id
      t.integer :item_id

      t.timestamps
    end
  end
end
