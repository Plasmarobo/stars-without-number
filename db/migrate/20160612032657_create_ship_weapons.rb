class CreateShipWeapons < ActiveRecord::Migration[5.0]
  def change
    create_table :ship_weapons do |t|
      t.string :name
      t.string :description
      t.integer :cost
      t.string :damage
      t.integer :power
      t.integer :mass
      t.integer :hardpoint_use
      t.integer :min_hull_class
      t.integer :tech_level
      t.integer :ap
      t.boolean :clumsy
      t.integer :ammo_id
      t.integer :phase_rating
      t.boolean :cloud

      t.timestamps
    end
  end
end
