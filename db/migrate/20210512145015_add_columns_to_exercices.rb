class AddColumnsToExercices < ActiveRecord::Migration[5.1]
  def change
    add_column :exercices, :video, :string
    add_column :exercices, :description, :string
  end
end
