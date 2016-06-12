class CreateAssets < ActiveRecord::Migration[5.0]
  def change
    create_table :assets do |t|
      t.integer :max_hp
      t.string :asset_type
      t.string :attribute_type
      t.integer :cost
      t.integer :upkeep
      t.integer :tech_level
      t.integer :asset_level
      t.string :attack_attribute
      t.string :defense_attribute
      t.string :attack_roll
      t.string :counter_roll
      t.string :special

      t.timestamps
    end
  end
end
