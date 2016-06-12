class CreateFleets < ActiveRecord::Migration[5.0]
  def change
    create_table :fleets do |t|
      t.integer :system_id
      t.integer :planet_id
      t.integer :poi_id
      t.integer :faction_id
      t.integer :speed

      t.timestamps
    end
  end
end
