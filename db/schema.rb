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

ActiveRecord::Schema.define(version: 20180910142519) do

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
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_profiles_on_profile_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "repetitions", force: :cascade do |t|
    t.bigint "workout_set_id"
    t.integer "quantity", default: 0
    t.integer "weight", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["workout_set_id"], name: "index_repetitions_on_workout_set_id"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workout_sets", force: :cascade do |t|
    t.bigint "exercice_id"
    t.bigint "workout_id"
    t.string "video"
    t.integer "total_weight", default: 0
    t.integer "total_repetitions", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exercice_id"], name: "index_workout_sets_on_exercice_id"
    t.index ["workout_id"], name: "index_workout_sets_on_workout_id"
  end

  create_table "workouts", force: :cascade do |t|
    t.datetime "date"
    t.string "name"
    t.bigint "profile_id"
    t.boolean "is_template"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_workouts_on_profile_id"
  end

  add_foreign_key "profiles", "profiles"
  add_foreign_key "profiles", "users"
  add_foreign_key "repetitions", "workout_sets"
  add_foreign_key "results", "profiles"
  add_foreign_key "workout_sets", "exercices"
  add_foreign_key "workout_sets", "workouts"
  add_foreign_key "workouts", "profiles"
end
