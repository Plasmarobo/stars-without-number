class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.integer :cost
      t.integer :encumberance
      t.integer :tech_level
      t.integer :uses
      t.string :gm_notes

      t.timestamps
    end
  end
end
