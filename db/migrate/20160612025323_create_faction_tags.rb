class CreateFactionTags < ActiveRecord::Migration[5.0]
  def change
    create_table :faction_tags do |t|
      t.integer :faction_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
