class CreateFleetShips < ActiveRecord::Migration[5.0]
  def change
    create_table :fleet_ships do |t|
      t.integer :ship_id
      t.integer :fleet_id

      t.timestamps
    end
  end
end
