class CreateShipShares < ActiveRecord::Migration[5.0]
  def change
    create_table :ship_shares do |t|
      t.integer :character_id
      t.integer :ship_id
      t.integer :shares

      t.timestamps
    end
  end
end
