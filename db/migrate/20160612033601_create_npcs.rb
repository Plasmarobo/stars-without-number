class CreateNpcs < ActiveRecord::Migration[5.0]
  def change
    create_table :npcs do |t|
      t.string :name
      t.integer :character_id
      t.integer :faction_id
      t.itneger :planet_id
      t.integer :location_id
      t.integer :satellite_id
      t.integer :poi_id
      t.integer :ship_id
      t.string :notes
      t.string :gm_notes
      t.string :description

      t.timestamps
    end
  end
end
