# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_24_210239) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.date "booking_date"
    t.bigint "user_id"
    t.bigint "space_id"
    t.boolean "confirmed"
    t.index ["space_id"], name: "index_bookings_on_space_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "spaces", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "price"
    t.string "photo_url"
    t.date "available_from"
    t.date "available_to"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_spaces_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "bookings", "spaces"
  add_foreign_key "bookings", "users"
  add_foreign_key "spaces", "users"
end
