class CreatePsiDisciplines < ActiveRecord::Migration[5.0]
  def change
    create_table :psi_disciplines do |t|
      t.string :name
      t.string :description
      t.integer :cost
      t.integer :system_strain
      t.string :attack
      t.string :defense
      t.integer :level

      t.timestamps
    end
  end
end
