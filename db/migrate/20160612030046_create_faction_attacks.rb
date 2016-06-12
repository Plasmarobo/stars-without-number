class CreateFactionAttacks < ActiveRecord::Migration[5.0]
  def change
    create_table :faction_attacks do |t|
      t.integer :attacker_id
      t.integer :defender_id
      t.string :attack_roll
      t.string :defense_roll
      t.integer :attack
      t.integer :defense
      t.boolean :counter

      t.timestamps
    end
  end
end
