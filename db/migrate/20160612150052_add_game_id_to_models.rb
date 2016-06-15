class AddGameIdToModels < ActiveRecord::Migration[5.0]
  def up
    change_table :factions do |t|
      t.integer :game_id, default: false
    end
    change_table :events do |t|
      t.integer :game_id, default: false
    end
    change_table :sectors do |t|
      t.integer :game_id, default: false
    end
    change_table :npcs do |t|
      t.integer :game_id, default: false
    end
  end

  def down
    remove_column :factions, :game_id
    remove_column :events, :game_id
    remove_column :sectors, :game_id
    remove_column :npcs, :game_id
  end
end
