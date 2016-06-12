class CreateShips < ActiveRecord::Migration[5.0]
  def change
    create_table :ships do |t|
      t.integer :hp
      t.integer :free_power
      t.integer :free_mass
      t.integer :ship_hull_id

      t.timestamps
    end
  end
end
