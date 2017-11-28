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

ActiveRecord::Schema.define(version: 20171126154324) do

  create_table "locations", force: :cascade do |t|
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopmia", force: :cascade do |t|
    t.string "chain"
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.string "address"
    t.string "city"
    t.integer "zip"
    t.string "department"
    t.string "phone"
    t.string "hours"
    t.integer "store_id"
    t.string "is_address_computed"
    t.string "is_location_computed"
    t.string "key"
    t.string "ignored"
    t.string "ignore_reason"
    t.string "overload_chain_name"
    t.string "mandatory_coords"
    t.string "country_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
