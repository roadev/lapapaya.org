# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141121195822) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: true do |t|
    t.string   "name",                                  null: false
    t.text     "description",                           null: false
    t.datetime "start_date",                            null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.datetime "end_date"
    t.integer  "duration"
    t.integer  "green"
    t.integer  "yellow"
    t.integer  "red"
    t.text     "main_image_url"
    t.boolean  "recurrent",             default: false, null: false
    t.integer  "num_tickets",           default: 0,     null: false
    t.integer  "num_owner_tickets",     default: 0,     null: false
    t.integer  "table_id"
    t.integer  "num_available_tickets", default: 0,     null: false
  end

  create_table "admins", force: true do |t|
    t.string   "email",                              default: "", null: false
    t.string   "encrypted_password",     limit: 128, default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "authentications", force: true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carts", force: true do |t|
    t.datetime "purchased_at"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_item_categories", id: false, force: true do |t|
    t.integer "category_id"
    t.integer "item_category_id"
  end

  add_index "categories_item_categories", ["category_id"], name: "index_categories_item_categories_on_category_id", using: :btree
  add_index "categories_item_categories", ["item_category_id"], name: "index_categories_item_categories_on_item_category_id", using: :btree

  create_table "cities", force: true do |t|
    t.string   "name",        null: false
    t.string   "lat"
    t.string   "long"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "country_id"
    t.integer  "currency_id"
  end

  create_table "configurations", force: true do |t|
    t.string   "feature"
    t.string   "value"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "contacts", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone_number"
    t.boolean  "send_emails",  default: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "countries", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coworking_spaces", force: true do |t|
    t.string   "name"
    t.integer  "green"
    t.integer  "yellow"
    t.integer  "red"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "user_id"
    t.string   "lat"
    t.string   "long"
    t.integer  "city_id"
    t.integer  "category_id"
    t.text     "description"
    t.text     "address"
    t.time     "start_time_download_coupons"
    t.time     "end_time_download_coupons"
    t.string   "url"
  end

  create_table "currencies", force: true do |t|
    t.string   "name"
    t.string   "symbol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dreams", force: true do |t|
    t.string   "dream"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "dreams", ["user_id"], name: "index_dreams_on_user_id", using: :btree

  create_table "email_notices", force: true do |t|
    t.string   "email"
    t.string   "contact_name"
    t.integer  "item_category_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "image_coworking_spaces", force: true do |t|
    t.integer  "image_id"
    t.integer  "coworking_space_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "image_tables", force: true do |t|
    t.integer  "image_id"
    t.integer  "table_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: true do |t|
    t.text     "url_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_categories", force: true do |t|
    t.string   "name",                                                      null: false
    t.text     "description"
    t.datetime "created_at",                                                null: false
    t.datetime "updated_at",                                                null: false
    t.text     "image_url"
    t.decimal  "normal_price",       precision: 10, scale: 2, default: 0.0
    t.decimal  "offered_price",      precision: 10, scale: 2, default: 0.0
    t.string   "target_url"
    t.integer  "num_tables",                                  default: 0
    t.integer  "green",                                       default: 0
    t.integer  "yellow",                                      default: 0
    t.integer  "red",                                         default: 0
    t.integer  "reserved",                                    default: 0
    t.integer  "coworking_space_id"
    t.boolean  "promo_header"
  end

  create_table "item_categories_coworking_spaces", force: true do |t|
    t.integer  "coworking_space_id", default: 0
    t.integer  "green"
    t.integer  "yellow"
    t.integer  "red"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "item_category_id"
    t.integer  "num_tables",         default: 0
  end

  create_table "line_items", force: true do |t|
    t.decimal  "unit_price"
    t.integer  "cart_id"
    t.integer  "quantity"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "table_id"
    t.integer  "reservation_id"
  end

  create_table "microposts", force: true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "large_content"
    t.string   "image"
  end

  create_table "news_letter_emails", force: true do |t|
    t.text     "email",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "news_letter_emails", ["email"], name: "index_news_letter_emails_on_email", unique: true, using: :btree

  create_table "order_transactions", force: true do |t|
    t.integer  "order_id"
    t.string   "action"
    t.integer  "amount"
    t.boolean  "success"
    t.string   "authorization"
    t.string   "message"
    t.text     "params"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "orders", force: true do |t|
    t.integer  "cart_id"
    t.string   "ip_address"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "card_type"
    t.date     "card_expires_on"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "card_verification", default: "123", null: false
    t.string   "express_token"
    t.string   "express_payer_id"
    t.string   "card_number"
  end

  create_table "products", force: true do |t|
    t.integer  "category_id"
    t.string   "name"
    t.decimal  "price"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "reservations", force: true do |t|
    t.integer  "table_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "duration"
    t.integer  "user_id"
    t.datetime "end_time"
    t.datetime "start_time"
    t.integer  "state_id",         default: 1,     null: false
    t.boolean  "recurrent",        default: false, null: false
    t.string   "email"
    t.integer  "item_category_id"
  end

  create_table "reservations_activities", force: true do |t|
    t.integer  "reservation_id", default: 0
    t.integer  "activity_id",    default: 0
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "num_tickets",    default: 0, null: false
  end

  create_table "solucions", force: true do |t|
    t.integer  "micropost_id"
    t.string   "solucion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  add_index "solucions", ["micropost_id"], name: "index_solucions_on_micropost_id", using: :btree

  create_table "states", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "subscription_requests", force: true do |t|
    t.string   "phone",                   null: false
    t.integer  "city_id",                 null: false
    t.integer  "user_id",                 null: false
    t.string   "description"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "state",       default: 1, null: false
  end

  create_table "tables", force: true do |t|
    t.integer  "coworking_space_id"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.boolean  "booked"
    t.string   "name"
    t.string   "tipo",               default: "resource"
    t.text     "observations"
    t.integer  "item_category_id",   default: 0,          null: false
  end

  create_table "tickets", force: true do |t|
    t.integer  "cart_id",                    null: false
    t.integer  "activity_id",                null: false
    t.integer  "user_id",                    null: false
    t.integer  "state_id",                   null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "reservation_id", default: 0, null: false
  end

  create_table "transactions", force: true do |t|
    t.integer  "order_id"
    t.string   "action"
    t.integer  "amount"
    t.boolean  "success"
    t.string   "authorization"
    t.string   "message"
    t.text     "params"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "visitors", force: true do |t|
    t.string   "email"
    t.string   "name"
    t.string   "phone_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "skype"
  end

  create_table "wikis", force: true do |t|
    t.string   "title"
    t.text     "abstract"
    t.text     "content"
    t.string   "tags"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
