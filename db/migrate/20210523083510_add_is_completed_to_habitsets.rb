class AddIsCompletedToHabitsets < ActiveRecord::Migration[5.1]
  def change
    add_column :habitsets, :is_completed, :boolean
  end
end
