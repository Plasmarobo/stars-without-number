class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :description
      t.integer :cost
      t.integer :speed
      t.integer :armor
      t.integer :max_hp
      t.integer :max_crew
      t.integer :tech_level
      t.boolean :heavy_armor

      t.timestamps
    end
  end
end
