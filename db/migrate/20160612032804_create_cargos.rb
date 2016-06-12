class CreateCargos < ActiveRecord::Migration[5.0]
  def change
    create_table :cargos do |t|
      t.integer :item_id
      t.string :name
      t.string :description
      t.string :cost
      t.string :mass
      t.string :count

      t.timestamps
    end
  end
end
