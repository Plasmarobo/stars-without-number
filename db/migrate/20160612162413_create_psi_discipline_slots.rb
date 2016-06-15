class CreatePsiDisciplineSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :psi_discipline_slots do |t|
      t.integer :character_id
      t.integer :psi_discipline_id

      t.timestamps
    end
  end
end
