class CreatePlaentTags < ActiveRecord::Migration[5.0]
  def change
    create_table :plaent_tags do |t|
      t.integer :planet_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
