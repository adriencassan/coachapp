class AddCoachToWorkousets < ActiveRecord::Migration[5.1]
  def change
    add_reference :workoutsets, :coach, foreign_key: { to_table: :profiles}
    add_column :workoutsets, :reviewed_at, :date
  end
end
