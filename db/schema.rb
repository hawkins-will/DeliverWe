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

ActiveRecord::Schema.define(version: 20170221012827) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string  "name"
    t.integer "price"
    t.string  "modifications"
    t.integer "modifications_price"
    t.integer "patron_id"
    t.index ["patron_id"], name: "index_items_on_patron_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.string  "head_patron"
    t.integer "total_price"
    t.integer "tip"
    t.integer "restaurant_id"
    t.index ["restaurant_id"], name: "index_orders_on_restaurant_id", using: :btree
  end

  create_table "patrons", force: :cascade do |t|
    t.string  "name"
    t.string  "personal_order"
    t.integer "personal_price"
    t.integer "order_id"
    t.index ["order_id"], name: "index_patrons_on_order_id", using: :btree
  end

  create_table "restaurants", force: :cascade do |t|
    t.string  "name"
    t.string  "logo_url"
    t.string  "menu_link"
    t.integer "delivery_fee"
  end

end
