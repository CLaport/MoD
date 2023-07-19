# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_07_18_153905) do
  create_table "choices", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "mates_or_dates"
    t.boolean "now_or_later"
    t.index ["user_id"], name: "index_choices_on_user_id"
  end

  create_table "interests", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "choices_id"
    t.index ["choices_id"], name: "index_interests_on_choices_id"
  end

  create_table "matches", force: :cascade do |t|
    t.boolean "extended"
    t.boolean "connected"
    t.integer "user_id", null: false
    t.integer "choices_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "first_user_id"
    t.integer "second_user_id"
    t.index ["choices_id"], name: "index_matches_on_choices_id"
    t.index ["first_user_id"], name: "index_matches_on_first_user_id"
    t.index ["second_user_id"], name: "index_matches_on_second_user_id"
    t.index ["user_id"], name: "index_matches_on_user_id"
  end

  create_table "suggested_events", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "interest_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "category"
    t.integer "choices_id"
    t.index ["choices_id"], name: "index_suggested_events_on_choices_id"
    t.index ["interest_id"], name: "index_suggested_events_on_interest_id"
  end

  create_table "suggestions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "interests_id"
    t.integer "suggested_events_id"
    t.index ["interests_id"], name: "index_suggestions_on_interests_id"
    t.index ["suggested_events_id"], name: "index_suggestions_on_suggested_events_id"
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

  add_foreign_key "choices", "users"
  add_foreign_key "interests", "choices", column: "choices_id"
  add_foreign_key "matches", "choices", column: "choices_id"
  add_foreign_key "matches", "users"
  add_foreign_key "matches", "users", column: "first_user_id"
  add_foreign_key "matches", "users", column: "second_user_id"
  add_foreign_key "suggested_events", "choices", column: "choices_id"
  add_foreign_key "suggested_events", "interests"
  add_foreign_key "suggestions", "interests", column: "interests_id"
  add_foreign_key "suggestions", "suggested_events", column: "suggested_events_id"
end
