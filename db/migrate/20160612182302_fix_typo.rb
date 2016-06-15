class FixTypo < ActiveRecord::Migration[5.0]
  def change
    rename_column :armors, :encumberance, :encumbrance
  end
end
