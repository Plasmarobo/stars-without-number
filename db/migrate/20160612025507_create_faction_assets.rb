class CreateFactionAssets < ActiveRecord::Migration[5.0]
  def change
    create_table :faction_assets do |t|
      t.boolean :maintained
      t.boolean :disabled
      t.integer :asset_id
      t.integer :hp
      t.integer :faction_id
      t.string :gm_notes
      t.string :notes

      t.timestamps
    end
  end
end
