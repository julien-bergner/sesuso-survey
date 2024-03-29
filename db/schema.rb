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

ActiveRecord::Schema.define(:version => 20121209002734) do

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "survey_areas", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "location"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "survey_id"
  end

  create_table "survey_data_sets", :force => true do |t|
    t.datetime "start"
    t.datetime "end"
    t.integer  "user_id"
    t.integer  "survey_location_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "survey_locations", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.text     "notice"
    t.string   "street"
    t.string   "street_number"
    t.string   "zip"
    t.string   "city"
    t.string   "url"
    t.string   "map_url"
    t.integer  "survey_area_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "user_id"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "gmaps"
  end

  create_table "survey_value_sets", :force => true do |t|
    t.integer  "value1"
    t.boolean  "value2"
    t.boolean  "value3"
    t.boolean  "value4"
    t.boolean  "value5"
    t.boolean  "value6"
    t.boolean  "value7"
    t.integer  "survey_data_set_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.time     "time"
    t.boolean  "value8"
    t.text     "value9"
  end

  create_table "surveys", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "city"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                    :default => "", :null => false
    t.string   "encrypted_password",       :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",            :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.string   "name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street"
    t.string   "street_number"
    t.string   "zip"
    t.string   "mobile_phone"
    t.date     "date_of_birth"
    t.boolean  "drivers_license"
    t.string   "bank_account_number"
    t.string   "bank_identification_code"
    t.string   "city"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
