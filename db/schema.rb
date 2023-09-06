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

ActiveRecord::Schema[7.0].define(version: 2023_09_06_152956) do
  create_table "event00s", force: :cascade do |t|
    t.string "title"
    t.string "event_type"
    t.integer "user_id", null: false
    t.text "event_description"
    t.datetime "from_datetime"
    t.datetime "to_datetime"
    t.string "event_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_event00s_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "event_type"
    t.string "event_title"
    t.integer "user_id"
    t.text "event_description"
    t.datetime "from_datetime"
    t.datetime "to_datetime"
    t.string "event_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "events__forces", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eventso", force: :cascade do |t|
    t.string "title"
    t.string "event_type"
    t.integer "user_id", null: false
    t.text "event_description"
    t.datetime "from_datetime"
    t.datetime "to_datetime"
    t.string "event_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "list00s", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "event_id", null: false
    t.string "title"
    t.string "list_type"
    t.string "event_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_list00s_on_event_id"
    t.index ["user_id"], name: "index_list00s_on_user_id"
  end

  create_table "lists", force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
    t.string "list_type"
    t.string "envent_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_lists_on_event_id"
    t.index ["user_id"], name: "index_lists_on_user_id"
  end

  create_table "lists__forces", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listso", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "event_id", null: false
    t.string "title"
    t.string "list_type"
    t.string "event_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_events", force: :cascade do |t|
    t.string "title"
    t.string "event_type"
    t.integer "user_id", null: false
    t.text "event_description"
    t.datetime "from_datetime"
    t.datetime "to_datetime"
    t.string "event_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_events_on_user_id"
  end

  create_table "user_lists", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "event_id", null: false
    t.string "title"
    t.string "list_type"
    t.string "event_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "event00s", "users"
  add_foreign_key "events", "users"
  add_foreign_key "list00s", "events"
  add_foreign_key "list00s", "users"
  add_foreign_key "lists", "events"
  add_foreign_key "lists", "users"
end
