class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.integer :planet_id
      t.integer :satellite_id
      t.integer :poi_id
      t.string :name
      t.string :description
      t.string :gm_notes

      t.timestamps
    end
  end
end
