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
      t.datetime :date
      t.string :description
      t.string :photo
      t.string :url
      t.boolean :is_model
      t.datetime :coach_reviewed_at
      t.string :coach_guidelines_video
      t.string :coach_guidelines
      t.string :coach_feedback_video
      t.string :coach_feedback
      t.integer :coach_review_performance, default: 0
      t.integer :coach_review_execution, default: 0
      t.integer :kcal, default: 0
      t.timestamps
    end
  end
end
