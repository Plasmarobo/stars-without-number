class CreateShipHulls < ActiveRecord::Migration[5.0]
  def change
    create_table :ship_hulls do |t|
      t.string :name
      t.string :description
      t.integer :cost
      t.integer :max_hp
      t.integer :min_crew
      t.integer :max_crew
      t.integer :max_power
      t.integer :speed
      t.integer :armor
      t.integer :ac
      t.integer :max_mass
      t.integer :hardpoints
      t.integer :hull_class
      t.string :manufacturerer

      t.timestamps
    end
  end
end
