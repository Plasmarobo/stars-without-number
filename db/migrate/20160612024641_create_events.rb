class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :body
      t.integer :x
      t.integer :y
      t.integer :planet_id
      t.integer :system_id
      t.integer :faction_id
      t.integer :player_id
      t.integer :npc_id
      t.integer :ship_id
      t.integer :fleet_id
      t.string :tags

      t.timestamps
    end
  end
end
