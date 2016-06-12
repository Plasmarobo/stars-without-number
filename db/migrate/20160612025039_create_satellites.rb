class CreateSatellites < ActiveRecord::Migration[5.0]
  def change
    create_table :satellites do |t|
      t.integer :x
      t.integer :y
      t.integer :planet_id
      t.integer :poi_id
      t.integer :orbit_id
      t.string :description
      t.string :name
      t.string :gm_notes

      t.timestamps
    end
  end
end
