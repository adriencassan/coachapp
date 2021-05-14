class AddCoachToWorkoutset < ActiveRecord::Migration[5.1]
  def change
    add_column :workoutsets, :coach_id, :profiles
  end
end
