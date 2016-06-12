class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :sector_id
      t.integer :user_id

      t.timestamps
    end
  end
end
