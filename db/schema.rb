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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130811163254) do

  create_table "images", :force => true do |t|
    t.string   "listing_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.string   "image_file_size"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "listings", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.integer  "user_id"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.decimal  "price"
    t.decimal  "sqft"
    t.string   "property_type"
    t.integer  "bedrooms"
    t.boolean  "basement"
    t.integer  "status"
    t.decimal  "bathrooms"
    t.string   "lot_size"
    t.integer  "fireplace"
    t.string   "cooling"
    t.string   "garage"
    t.string   "heating"
    t.string   "year_built"
    t.string   "interior_features"
    t.string   "exterior_features"
    t.string   "elementary_school"
    t.string   "middle_school"
    t.string   "high_school"
    t.string   "contact_number"
    t.string   "contact_email"
    t.string   "mls_number"
    t.string   "lat"
    t.string   "long"
    t.string   "basement_type"
    t.string   "slug"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "featured",          :default => 0
  end

  add_index "listings", ["slug"], :name => "index_listings_on_slug", :unique => true

  create_table "property_types", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_messages", :force => true do |t|
    t.string   "from"
    t.string   "phone"
    t.string   "message"
    t.integer  "user_id"
    t.integer  "listing_id"
    t.datetime "date_added"
    t.boolean  "viewed"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "phone_number"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
