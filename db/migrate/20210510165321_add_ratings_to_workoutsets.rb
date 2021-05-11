class AddRatingsToWorkoutsets < ActiveRecord::Migration[5.1]
  def change
    add_column :workoutsets, :rating_performance, :integer, default: 0
    add_column :workoutsets, :rating_execution, :integer, default: 0
  end
end
