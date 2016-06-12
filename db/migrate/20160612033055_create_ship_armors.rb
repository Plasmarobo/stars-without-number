class CreateShipArmors < ActiveRecord::Migration[5.0]
  def change
    create_table :ship_armors do |t|
      t.string :name
      t.string :description
      t.integer :cost
      t.integer :power
      t.integer :mass
      t.integer :min_hull_class
      t.integer :tech_level
      t.integer :ac_bonus
      t.integer :ac
      t.integer :speed_penalty
      t.integer :ap_reduction
      t.integer :evasion_chance
      t.integer :phase_reduction
      t.integer :bonus_hp

      t.timestamps
    end
  end
end
