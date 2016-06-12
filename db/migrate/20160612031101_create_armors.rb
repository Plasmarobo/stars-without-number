class CreateArmors < ActiveRecord::Migration[5.0]
  def change
    create_table :armors do |t|
      t.string :name
      t.string :description
      t.integer :ac
      t.integer :ac_bonus
      t.integer :damage_reduction
      t.integer :cost
      t.integer :tech_level
      t.integer :encumberance
      t.integer :ammo_id
      t.integer :ammo_efficiency

      t.timestamps
    end
  end
end
