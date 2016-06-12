class CreateShipArmorSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :ship_armor_slots do |t|
      t.integer :ship_armor_id
      t.integer :ship_id

      t.timestamps
    end
  end
end
