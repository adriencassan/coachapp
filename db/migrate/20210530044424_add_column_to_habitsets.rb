class AddColumnToHabitsets < ActiveRecord::Migration[5.1]
  def change
      add_column :habitsets, :status, :string
  end
end
