class CreateFactionTurns < ActiveRecord::Migration[5.0]
  def change
    create_table :faction_turns do |t|
      t.integer :turn_number
      t.integer :game_id
      t.integer :order

      t.timestamps
    end
  end
end
