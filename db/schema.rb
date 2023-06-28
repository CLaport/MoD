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

ActiveRecord::Schema[7.0].define(version: 2023_06_27_194439) do
  create_table "choices", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "interest_id", null: false
    t.integer "suggested_events_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["interest_id"], name: "index_choices_on_interest_id"
    t.index ["suggested_events_id"], name: "index_choices_on_suggested_events_id"
    t.index ["user_id"], name: "index_choices_on_user_id"
  end

  create_table "interests", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.boolean "extended"
    t.boolean "connected"
    t.integer "user_id", null: false
    t.integer "choices_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["choices_id"], name: "index_matches_on_choices_id"
    t.index ["user_id"], name: "index_matches_on_user_id"
  end

  create_table "suggested_events", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "interest_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["interest_id"], name: "index_suggested_events_on_interest_id"
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

  add_foreign_key "choices", "interests"
  add_foreign_key "choices", "suggested_events", column: "suggested_events_id"
  add_foreign_key "choices", "users"
  add_foreign_key "matches", "choices", column: "choices_id"
  add_foreign_key "matches", "users"
  add_foreign_key "suggested_events", "interests"
end
