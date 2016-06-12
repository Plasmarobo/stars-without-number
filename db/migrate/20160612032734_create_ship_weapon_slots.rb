class CreateShipWeaponSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :ship_weapon_slots do |t|
      t.integer :ship_weapon_id
      t.integer :ship_id
      t.integer :ammo_slot_id

      t.timestamps
    end
  end
end
