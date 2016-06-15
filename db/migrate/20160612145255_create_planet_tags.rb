class CreatePlanetTags < ActiveRecord::Migration[5.0]
  def change
    create_table :planet_tags do |t|
      t.integer :planet_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
