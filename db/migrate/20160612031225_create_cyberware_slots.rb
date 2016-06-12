class CreateCyberwareSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :cyberware_slots do |t|
      t.integer :cyberware_id
      t.integer :character_id

      t.timestamps
    end
  end
end
