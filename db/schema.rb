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

ActiveRecord::Schema[7.0].define(version: 2022_12_05_114122) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "discounts", force: :cascade do |t|
    t.string "brand"
    t.integer "min_fuel_l"
    t.integer "max_fuel_l"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "card"
    t.text "description"
    t.string "min_user_age"
    t.string "max_user_age"
    t.string "locations_applied"
    t.string "discount_type"
    t.float "quantity"
  end

  create_table "fuel_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "zip_code"
    t.string "district"
    t.float "latitude"
    t.float "longitude"
    t.string "station_type"
    t.string "brand"
    t.text "services"
    t.text "schedule"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations_fuel_types", force: :cascade do |t|
    t.bigint "fuel_type_id", null: false
    t.bigint "station_id", null: false
    t.float "price_per_l"
    t.datetime "update_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fuel_type_id"], name: "index_stations_fuel_types_on_fuel_type_id"
    t.index ["station_id"], name: "index_stations_fuel_types_on_station_id"
  end

  create_table "user_discounts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "discount_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discount_id"], name: "index_user_discounts_on_discount_id"
    t.index ["user_id"], name: "index_user_discounts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehicle_fuel_types", force: :cascade do |t|
    t.bigint "vehicle_id", null: false
    t.bigint "fuel_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fuel_type_id"], name: "index_vehicle_fuel_types_on_fuel_type_id"
    t.index ["vehicle_id"], name: "index_vehicle_fuel_types_on_vehicle_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "brand"
    t.string "model"
    t.float "real_consumption"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_vehicles_on_user_id"
  end

  add_foreign_key "stations_fuel_types", "fuel_types"
  add_foreign_key "stations_fuel_types", "stations"
  add_foreign_key "user_discounts", "discounts"
  add_foreign_key "user_discounts", "users"
  add_foreign_key "vehicle_fuel_types", "fuel_types"
  add_foreign_key "vehicle_fuel_types", "vehicles"
  add_foreign_key "vehicles", "users"
end
