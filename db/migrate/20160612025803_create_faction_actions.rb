class CreateFactionActions < ActiveRecord::Migration[5.0]
  def change
    create_table :faction_actions do |t|
      t.integer :faction_turn_id
      t.boolean :free
      t.string :action

      t.timestamps
    end
  end
end
