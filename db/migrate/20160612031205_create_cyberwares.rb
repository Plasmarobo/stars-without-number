class CreateCyberwares < ActiveRecord::Migration[5.0]
  def change
    create_table :cyberwares do |t|
      t.string :name
      t.string :description
      t.string :cost
      t.integer :system_strain
      t.integer :tech_level

      t.timestamps
    end
  end
end
