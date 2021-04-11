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

ActiveRecord::Schema.define(version: 2021_04_09_151850) do

  create_table "fooddetails", charset: "utf8", force: :cascade do |t|
    t.string "foodname", limit: 200, null: false
    t.string "fooddes", limit: 200, null: false
    t.decimal "foodrating", precision: 3, scale: 1, null: false
    t.decimal "foodprice", precision: 7, scale: 1, null: false
    t.string "foodimgsrc", limit: 500, null: false
    t.date "created_at", null: false
    t.date "updated_at", null: false
    t.bigint "restaurant_id", null: false
    t.string "foodtype", limit: 20, null: false
    t.string "foodtiming", limit: 3, null: false
    t.index ["restaurant_id"], name: "restaurant_id"
  end

  create_table "restaurants", charset: "utf8", force: :cascade do |t|
    t.text "hotel_address"
    t.text "hotel_cate"
    t.text "hotelimg"
    t.text "hotelname"
    t.decimal "rating", precision: 10
    t.string "status", limit: 4
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "counting", null: false
  end

  add_foreign_key "fooddetails", "restaurants", name: "fooddetails_ibfk_1"
end
