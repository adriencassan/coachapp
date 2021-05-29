class AddColumnsToHabitsets < ActiveRecord::Migration[5.1]
  def change
     add_column :habitsets, :result_weight, :integer
     add_column :habitsets, :result_fatmass_pct, :integer
  end
end
