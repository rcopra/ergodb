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

ActiveRecord::Schema[7.0].define(version: 2023_11_14_092232) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "keyboard_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["keyboard_id"], name: "index_favorites_on_keyboard_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "images", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "keyboard_id", null: false
    t.string "url"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["keyboard_id"], name: "index_images_on_keyboard_id"
    t.index ["user_id"], name: "index_images_on_user_id"
  end

  create_table "keyboard_votes", force: :cascade do |t|
    t.bigint "keyboard_id", null: false
    t.bigint "user_id", null: false
    t.string "vote_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["keyboard_id"], name: "index_keyboard_votes_on_keyboard_id"
    t.index ["user_id"], name: "index_keyboard_votes_on_user_id"
  end

  create_table "keyboards", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "type"
    t.string "image_url"
    t.bigint "user_id", null: false
    t.boolean "community_uploaded"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_keyboards_on_user_id"
  end

  create_table "questionnaire_responses", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.json "responses"
    t.string "session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_questionnaire_responses_on_user_id"
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

  add_foreign_key "favorites", "keyboards"
  add_foreign_key "favorites", "users"
  add_foreign_key "images", "keyboards"
  add_foreign_key "images", "users"
  add_foreign_key "keyboard_votes", "keyboards"
  add_foreign_key "keyboard_votes", "users"
  add_foreign_key "keyboards", "users"
  add_foreign_key "questionnaire_responses", "users"
end
