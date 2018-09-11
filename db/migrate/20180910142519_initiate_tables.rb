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
      t.references :profile, foreign_key: true
      t.boolean :is_template
      t.timestamps
    end

    create_table :exercices do |t|
      t.string :name
      t.string :nameEN
      t.timestamps
    end

    create_table :workoutsets do |t|
      t.references :exercice, foreign_key: true
      t.references :workout, foreign_key: true
      t.string :video
      t.integer :total_weight, default: 0
      t.integer :total_repetitions, default: 0
      t.timestamps
    end

    create_table :repetitions do |t|
      t.references :workoutset, foreign_key: true
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
