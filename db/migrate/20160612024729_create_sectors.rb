class CreateSectors < ActiveRecord::Migration[5.0]
  def change
    create_table :sectors do |t|
      t.string :name
      t.integer :width
      t.integer :height
      t.string :image_src
      t.integer :seed

      t.timestamps
    end
  end
end
