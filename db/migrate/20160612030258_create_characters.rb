class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.integer :charater_class_id
      t.integer :level
      t.integer :hp
      t.integer :max_hp
      t.integer :pp
      t.integer :max_pp
      t.integer :xp
      t.integer :skill_points
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.string :notes
      t.string :gm_notes
      t.integer :player_id
      t.integer :homeworld_id
      t.integer :background_id
      t.integer :training_id
      t.integer :credits
      t.integer :system_strain

      t.timestamps
    end
  end
end
