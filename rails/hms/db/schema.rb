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

ActiveRecord::Schema[7.0].define(version: 2022_05_23_172159) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categorization", id: false, force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "reservation_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "gender"
    t.string "mobile"
    t.date "check_in"
    t.date "check_out"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "country"
    t.index ["name"], name: "index_customers_on_name"
  end

  create_table "distributors", force: :cascade do |t|
    t.string "zipcode"
    t.check_constraint "char_length(zipcode::text) = 5", name: "zipchk"
  end

  create_table "payments", force: :cascade do |t|
    t.boolean "paid"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "customer_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_products_on_name"
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

  create_table "rooms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "name"
    t.string "price"
    t.integer "customer_id"
    t.decimal "price_of_food", precision: 5, scale: 2
    t.string "rooms_type"
    t.bigint "rooms_id"
    t.index ["rooms_type", "rooms_id"], name: "index_rooms_on_rooms"
  end

  add_foreign_key "payments", "customers"
  add_foreign_key "reservations", "customers"
end
