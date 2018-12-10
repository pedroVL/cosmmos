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

ActiveRecord::Schema.define(version: 2018_12_10_144222) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chats", force: :cascade do |t|
    t.bigint "sender_id_id"
    t.bigint "recipient_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipient_id_id"], name: "index_chats_on_recipient_id_id"
    t.index ["sender_id_id"], name: "index_chats_on_sender_id_id"
  end

  create_table "contributions", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "project_id"
    t.integer "equity"
    t.string "job_title"
    t.text "job_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_contributions_on_project_id"
    t.index ["user_id"], name: "index_contributions_on_user_id"
  end

  create_table "investments", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "round_id"
    t.integer "equity"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["round_id"], name: "index_investments_on_round_id"
    t.index ["user_id"], name: "index_investments_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "chat_id"
    t.bigint "message_id"
    t.text "body"
    t.boolean "read", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chat_id"], name: "index_messages_on_chat_id"
    t.index ["message_id"], name: "index_messages_on_message_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "photo"
    t.string "images", default: [], array: true
    t.string "title"
    t.text "description"
    t.text "about_us"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rounds", force: :cascade do |t|
    t.bigint "project_id"
    t.integer "total_equity"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_rounds_on_project_id"
  end

  create_table "teams", force: :cascade do |t|
    t.integer "user"
    t.integer "project"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "contributions", "projects"
  add_foreign_key "contributions", "users"
  add_foreign_key "investments", "rounds"
  add_foreign_key "investments", "users"
  add_foreign_key "messages", "chats"
  add_foreign_key "messages", "messages"
  add_foreign_key "rounds", "projects"
end
