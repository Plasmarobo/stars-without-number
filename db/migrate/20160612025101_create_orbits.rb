class CreateOrbits < ActiveRecord::Migration[5.0]
  def change
    create_table :orbits do |t|
      t.integer :distance
      t.float :period
      t.float :angle
      t.integer :index

      t.timestamps
    end
  end
end
