class AddColumnsToHabitsets < ActiveRecord::Migration[5.1]
  def change
       add_column :habitsets, :started_at, :date
       add_column :habitsets, :is_favorite, :boolean
       add_column :habitsets, :fit_workouttime, :integer
       add_column :habitsets, :fit_workoutdescription, :string
  end
end
