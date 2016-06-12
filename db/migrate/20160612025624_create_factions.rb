class CreateFactions < ActiveRecord::Migration[5.0]
  def change
    create_table :factions do |t|
      t.integer :xp
      t.string :name
      t.integer :planet_id
      t.integer :force
      t.integer :cunning
      t.integer :wealth
      t.integer :faccreds
      t.integer :goal_id
      t.integer :goal_progress
      t.integer :goal_requirement
      t.integer :user_id

      t.timestamps
    end
  end
end
