class CreateAmmoSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :ammo_slots do |t|
      t.integer :character_id
      t.integer :weapon_slot_id
      t.integer :ship_weapon_slot_id
      t.integer :item_slot_id
      t.integer :rounds_fired
      t.integer :cargo_slot_id

      t.timestamps
    end
  end
end
