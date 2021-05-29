class ChangeResultsToFloat < ActiveRecord::Migration[5.1]
  def change
    change_column :habitsets, :result_weight, :float
    change_column :habitsets, :result_fatmass_pct, :float
  end
end
