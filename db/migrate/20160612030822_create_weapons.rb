class CreateWeapons < ActiveRecord::Migration[5.0]
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :description
      t.string :attack_attribute
      t.string :damage
      t.integer :cost
      t.integer :range
      t.integer :ammo_efficiency
      t.integer :ammo_id
      t.boolean :long_reload
      t.integer :tech_level
      t.boolean :psitech
      t.integer :encumberance
      t.boolean :heavy_weapon

      t.timestamps
    end
  end
end
