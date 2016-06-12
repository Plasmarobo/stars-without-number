class CreateWeaponSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :weapon_slots do |t|
      t.integer :weapon_id
      t.integer :ammo_slot_id
      t.integer :character_id
      t.integer :vehicle_id
      t.integer :item_id

      t.timestamps
    end
  end
end
