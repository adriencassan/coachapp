class CreateHabitElements < ActiveRecord::Migration[5.1]
  def change
    create_table :habit_elements do |t|
      t.string :name
      t.string :nameFR
      t.boolean :isElementHabitset, default: true
      t.boolean :isElementHabitsetline, default: true
    end

     add_reference :habitsets, :habit_element, foreign_key: true
  end


end
