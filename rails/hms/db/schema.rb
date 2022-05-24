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

ActiveRecord::Schema[7.0].define(version: 2022_05_24_185229) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", comment: "these are the customers which are staying at the hotel", force: :cascade do |t|
    t.string "name", null: false
    t.string "address"
    t.string "gender"
    t.string "mobile"
    t.date "check_in"
    t.date "check_out"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "country"
  end

  create_table "payments", force: :cascade do |t|
    t.boolean "paid", null: false
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "customer_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.date "date"
    t.boolean "confirm", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "customer_id"
    t.time "check_in_hotel"
    t.time "check_out_hotel"
    t.bigint "room_id"
  end

  create_table "rooms", id: { type: :serial, comment: "these are the rooms allotted to the respective customers" }, force: :cascade do |t|
    t.text "name_of_customer"
    t.string "price"
    t.integer "customer_id"
    t.decimal "price_of_food", precision: 5, scale: 2
    t.string "rooms_type"
    t.bigint "rooms_id"
    t.integer "sku"
    t.index ["rooms_type", "rooms_id"], name: "index_rooms_on_rooms"
  end

end
