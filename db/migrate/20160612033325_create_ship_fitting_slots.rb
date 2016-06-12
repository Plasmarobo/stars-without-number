class CreateShipFittingSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :ship_fitting_slots do |t|
      t.integer :ship_fitting_id
      t.integer :ship_id

      t.timestamps
    end
  end
end
