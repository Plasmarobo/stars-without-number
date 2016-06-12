class CreateVehicleSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicle_slots do |t|
      t.integer :vehicle_id
      t.integer :hp
      t.integer :character_id
      t.integer :ship_id

      t.timestamps
    end
  end
end
