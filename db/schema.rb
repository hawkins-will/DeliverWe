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

ActiveRecord::Schema.define(version: 20170227231630) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string  "name"
    t.float   "price"
    t.string  "modifications"
    t.float   "modifications_price"
    t.integer "patron_id"
    t.index ["patron_id"], name: "index_items_on_patron_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.time     "time"
    t.integer  "restaurant_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["restaurant_id"], name: "index_orders_on_restaurant_id", using: :btree
  end

  create_table "patrons", force: :cascade do |t|
    t.string  "name"
    t.integer "order_id"
    t.integer "user_id"
    t.index ["order_id"], name: "index_patrons_on_order_id", using: :btree
    t.index ["user_id"], name: "index_patrons_on_user_id", using: :btree
  end

  create_table "posts", force: :cascade do |t|
    t.string   "content"
    t.string   "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "order_id"
    t.index ["order_id"], name: "index_posts_on_order_id", using: :btree
    t.index ["user_id"], name: "index_posts_on_user_id", using: :btree
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "logo_url"
    t.string "menu_link"
    t.float  "delivery_fee"
    t.float  "delivery_min"
    t.float  "tax"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "patrons", "users"
  add_foreign_key "posts", "orders"
  add_foreign_key "posts", "users"
end
