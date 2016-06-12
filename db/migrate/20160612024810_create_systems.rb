class CreateSystems < ActiveRecord::Migration[5.0]
  def change
    create_table :systems do |t|
      t.integer :x
      t.integer :y
      t.string :name
      t.integer :star_size
      t.integer :star_temperature
      t.string :description
      t.string :gm_notes

      t.timestamps
    end
  end
end
