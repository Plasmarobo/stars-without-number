class CreateTrainingSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :training_skills do |t|
      t.integer :training_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
