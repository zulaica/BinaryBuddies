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

ActiveRecord::Schema.define(version: 20150204004141) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "binary_buddies", force: :cascade do |t|
    t.string   "name"
    t.integer  "food_level"
    t.integer  "sleep_level"
    t.integer  "activity_level"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "shelter_id"
  end

  create_table "shelters", force: :cascade do |t|
    t.string   "variety"
    t.integer  "capacity"
    t.integer  "durability"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
