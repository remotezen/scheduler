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

ActiveRecord::Schema.define(version: 20170721200229) do

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.boolean "cash", default: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "created_at"], name: "index_events_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "event_id"
    t.boolean "grill", default: false, null: false
    t.boolean "line", default: false, null: false
    t.boolean "juice", default: false, null: false
    t.boolean "cashier", default: false, null: false
    t.boolean "baking", default: false, null: false
    t.boolean "coldpress", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "status", default: "normal"
    t.string "noavailability", default: "any"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["event_id", "created_at"], name: "index_users_on_event_id_and_created_at"
    t.index ["event_id"], name: "index_users_on_event_id"
    t.index ["name"], name: "index_users_on_name", unique: true
  end

end
