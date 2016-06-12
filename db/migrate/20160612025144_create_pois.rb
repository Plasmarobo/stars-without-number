class CreatePois < ActiveRecord::Migration[5.0]
  def change
    create_table :pois do |t|
      t.string :name
      t.integer :description
      t.integer :orbit_id
      t.string :gm_notes
      t.string :image_src

      t.timestamps
    end
  end
end
