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

ActiveRecord::Schema.define(version: 20210611154927) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "habit_elements", force: :cascade do |t|
    t.string "name"
    t.string "nameFR"
    t.boolean "isElementHabitset", default: true
    t.boolean "isElementHabitsetline", default: true
  end

  create_table "habitsets", force: :cascade do |t|
    t.bigint "coachee_id"
    t.bigint "coach_id"
    t.string "name"
    t.string "habitset_type"
    t.datetime "date"
    t.datetime "started_at"
    t.string "description"
    t.string "photo"
    t.string "url"
    t.boolean "is_active", default: true
    t.boolean "is_model", default: false
    t.boolean "is_completed", default: false
    t.boolean "is_favorite", default: false
    t.boolean "coach_review_is_requested", default: false
    t.datetime "coach_reviewed_at"
    t.string "coach_guidelines_video"
    t.string "coach_guidelines"
    t.string "coach_review_video"
    t.string "coach_review"
    t.integer "coach_review_performance", default: 0
    t.integer "coach_review_execution", default: 0
    t.integer "kcal", default: 0
    t.integer "fit_workouttime", default: 0
    t.string "fit_workoutdescription"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "result_weight"
    t.float "result_fatmass_pct"
    t.string "status"
    t.bigint "habit_element_id"
    t.index ["coach_id"], name: "index_habitsets_on_coach_id"
    t.index ["coachee_id"], name: "index_habitsets_on_coachee_id"
    t.index ["habit_element_id"], name: "index_habitsets_on_habit_element_id"
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

  add_foreign_key "habitsets", "habit_elements"
  add_foreign_key "profiles", "profiles"
  add_foreign_key "users", "profiles"
end
