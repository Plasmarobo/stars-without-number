class CreateShipFittings < ActiveRecord::Migration[5.0]
  def change
    create_table :ship_fittings do |t|
      t.string :name
      t.string :description
      t.integer :cost
      t.integer :power
      t.integer :mass
      t.integer :min_hull_class
      t.integer :max_hull_class
      t.integer :tech_level
      t.string :notes
      t.string :gm_notes

      t.timestamps
    end
  end
end
