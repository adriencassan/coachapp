class InitiateTables < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :last_name
      t.string :first_name
      t.string :role
      t.references :profile, foreign_key: true
      t.timestamps
    end

    create_table :workouts do |t|
      t.datetime :date
      t.string :name
      t.string :type_habit
      t.integer :program_id
      t.references :profile, foreign_key: true
      t.boolean :is_program, default: false
      t.timestamps
    end

    create_table :exercices do |t|
      t.string :name
      t.string :nameEN
      t.string :type_habit_item
      t.integer :kcal_protein, default: 0
      t.integer :kcal_carb, default: 0
      t.integer :kcal_fat, default: 0
      t.timestamps
    end

    create_table :workoutsets do |t|
      t.references :exercice, foreign_key: true
      t.references :workout, foreign_key: true
      t.string :name
      t.string :photo
      t.string :video
      t.string :feedback
      t.integer :total_weight, default: 0
      t.integer :total_repetitions, default: 0
      t.integer :total_kcal, default: 0
      t.integer :total_kcal_calculated, default: 0
      t.integer :total_kcal_protein, default: 0
      t.integer :total_kcal_carb, default: 0
      t.integer :total_kcal_fat, default: 0
      t.timestamps
    end

    create_table :repetitions do |t|
      t.references :workoutset, foreign_key: true
      t.references :exercice, foreign_key: true, as: :habit_item_id
      t.integer :quantity, default: 0
      t.integer :weight, default: 0
      t.boolean :is_complete,
      t.timestamps
    end

    create_table :results do |t|
      t.datetime :date
      t.integer :weight
      t.integer :fatmass
      t.references :profile, foreign_key: true
      t.string :selfie
      t.timestamps
    end
  end
end
