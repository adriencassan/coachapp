class InitiateTables < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :last_name
      t.string :first_name
      t.string :role
      t.references :profile, foreign_key: true
      t.timestamps
    end

    create_table :habitsets do |t|
      t.bigint :coachee_id, index: true, foreign_key: {to_table: :profiles}
      t.bigint :coach_id, index: true, foreign_key: {to_table: :profiles}
      t.string :name
      t.string :habitset_type
      t.datetime :date
      t.datetime :started_at
      t.string :description
      t.string :photo
      t.string :url
      t.boolean :is_active, default: true
      t.boolean :is_model, default: false
      t.boolean :is_completed, default: false
      t.boolean :is_favorite, default: false
      t.boolean :coach_review_is_requested, default: false
      t.datetime :coach_reviewed_at
      t.string :coach_guidelines_video
      t.string :coach_guidelines
      t.string :coach_review_video
      t.string :coach_review
      t.integer :coach_review_performance, default: 0
      t.integer :coach_review_execution, default: 0
      t.integer :kcal, default: 0
      t.integer :fit_workouttime, default: 0
      t.string :fit_workoutdescription
      t.timestamps
    end
  end
end
