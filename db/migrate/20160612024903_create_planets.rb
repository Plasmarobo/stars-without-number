class CreatePlanets < ActiveRecord::Migration[5.0]
  def change
    create_table :planets do |t|
      t.integer :x
      t.integer :y
      t.string :name
      t.integer :atmosphere
      t.integer :temperature
      t.integer :biosphere
      t.integer :tech_level
      t.integer :population
      t.integer :type_index
      t.string :description
      t.string :gm_notes
      t.string :image_src
      t.integer :orbit_id

      t.timestamps
    end
  end
end
