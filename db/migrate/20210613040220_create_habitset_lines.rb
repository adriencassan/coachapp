class CreateHabitsetLines < ActiveRecord::Migration[5.1]
  def change
    create_table :habitset_lines do |t|
      t.integer "quantity", default: 0
      t.integer "weight", default: 0
      t.boolean "is_completed", defaut: false
      t.references :habit_element, foreign_key: true
      t.references :habitset, foreign_key: true
      t.timestamps
    end
  end
end
