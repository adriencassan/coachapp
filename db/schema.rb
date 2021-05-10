# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20210510165321) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercices", force: :cascade do |t|
    t.string "name"
    t.string "nameEN"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "role"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_profiles_on_profile_id"
  end

  create_table "repetitions", force: :cascade do |t|
    t.bigint "workoutset_id"
    t.integer "quantity", default: 0
    t.integer "weight", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_complete"
    t.boolean "#<ActiveRecord::ConnectionAdapters::PostgreSQL::TableDefinition"
    t.index ["workoutset_id"], name: "index_repetitions_on_workoutset_id"
  end

  create_table "results", force: :cascade do |t|
    t.datetime "date"
    t.integer "weight"
    t.integer "fatmass"
    t.bigint "profile_id"
    t.string "selfie"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_results_on_profile_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "profile_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["profile_id"], name: "index_users_on_profile_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workouts", force: :cascade do |t|
    t.datetime "date"
    t.string "name"
    t.integer "program_id"
    t.bigint "profile_id"
    t.boolean "is_program", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_workouts_on_profile_id"
  end

  create_table "workoutsets", force: :cascade do |t|
    t.bigint "exercice_id"
    t.bigint "workout_id"
    t.string "video"
    t.string "feedback"
    t.integer "total_weight", default: 0
    t.integer "total_repetitions", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rating_performance", default: 0
    t.integer "rating_execution", default: 0
    t.index ["exercice_id"], name: "index_workoutsets_on_exercice_id"
    t.index ["workout_id"], name: "index_workoutsets_on_workout_id"
  end

  add_foreign_key "profiles", "profiles"
  add_foreign_key "repetitions", "workoutsets"
  add_foreign_key "results", "profiles"
  add_foreign_key "users", "profiles"
  add_foreign_key "workouts", "profiles"
  add_foreign_key "workoutsets", "exercices"
  add_foreign_key "workoutsets", "workouts"
end
