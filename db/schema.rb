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

ActiveRecord::Schema.define(version: 20140216194504) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "deals", force: true do |t|
    t.string "dealTitle"
    t.string "showImage"
    t.string "name"
    t.text   "dealinfo"
    t.string "URL"
    t.date   "expirationDate"
  end

  create_table "favorites", force: true do |t|
    t.boolean "favorites"
    t.integer "deal_id"
    t.integer "user_id"
  end

  create_table "users", force: true do |t|
    t.string  "email"
    t.string  "first_name"
    t.string  "last_name"
    t.date    "dob"
    t.string  "gender"
    t.string  "facebook_link"
    t.string  "password_digest"
    t.integer "zip"
  end

end
