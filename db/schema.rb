
ActiveRecord::Schema.define(version: 20140214171359) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "deals", force: true do |t|
    t.string "deal_title"
    t.string "showImage"
    t.string "name"
    t.text   "dealinfo"
    t.string "URL"
  end

  create_table "favorites", force: true do |t|
    t.boolean "favorites"
    t.integer "deal_id"
    t.integer "user_id"
  end

  create_table "users", force: true do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.date   "dob"
    t.string "gender"
    t.string "facebook_link"
    t.string "password_digest"
  end

end
