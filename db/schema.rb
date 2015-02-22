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

ActiveRecord::Schema.define(version: 20150222085202) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "asset_data", force: true do |t|
    t.integer  "asset_id"
    t.integer  "meta_data_id"
    t.string   "meta_data_value"
    t.string   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "asset_data", ["asset_id"], name: "index_asset_data_on_asset_id", using: :btree

  create_table "asset_tags", force: true do |t|
    t.integer  "asset_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "asset_tags", ["asset_id"], name: "index_asset_tags_on_asset_id", using: :btree
  add_index "asset_tags", ["tag_id"], name: "index_asset_tags_on_tag_id", using: :btree

  create_table "assets", force: true do |t|
    t.integer  "user_id"
    t.integer  "category_id"
    t.integer  "sub_category_id"
    t.integer  "status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assets", ["category_id"], name: "index_assets_on_category_id", using: :btree
  add_index "assets", ["status_id"], name: "index_assets_on_status_id", using: :btree
  add_index "assets", ["sub_category_id"], name: "index_assets_on_sub_category_id", using: :btree
  add_index "assets", ["user_id"], name: "index_assets_on_user_id", using: :btree

  create_table "categories", force: true do |t|
    t.string   "name"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meta_data", force: true do |t|
    t.string   "name"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offer_assets", force: true do |t|
    t.integer  "offer_id"
    t.integer  "asset_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "offer_assets", ["offer_id"], name: "index_offer_assets_on_offer_id", using: :btree

  create_table "offers", force: true do |t|
    t.integer  "from_id"
    t.integer  "to_id"
    t.integer  "status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "offers", ["from_id"], name: "index_offers_on_from_id", using: :btree
  add_index "offers", ["status_id"], name: "index_offers_on_status_id", using: :btree
  add_index "offers", ["to_id"], name: "index_offers_on_to_id", using: :btree

  create_table "reviews", force: true do |t|
    t.integer  "from_id"
    t.integer  "to_id"
    t.integer  "asset_id"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["asset_id"], name: "index_reviews_on_asset_id", using: :btree
  add_index "reviews", ["from_id"], name: "index_reviews_on_from_id", using: :btree
  add_index "reviews", ["to_id"], name: "index_reviews_on_to_id", using: :btree

  create_table "statuses", force: true do |t|
    t.string   "name"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sub_categories", force: true do |t|
    t.string   "name"
    t.integer  "category_id"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sub_categories", ["category_id"], name: "index_sub_categories_on_category_id", using: :btree

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "registration_email"
    t.string   "password"
    t.integer  "account_id"
    t.string   "first_name",         limit: 30
    t.string   "last_name",          limit: 30
    t.string   "address"
    t.string   "tel",                limit: 20
    t.string   "mobile",             limit: 20
    t.string   "contact_email"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "instagram"
    t.string   "photo"
    t.integer  "ratings_count"
    t.integer  "ratings_sum"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["account_id"], name: "index_users_on_account_id", using: :btree
  add_index "users", ["registration_email"], name: "index_users_on_registration_email", unique: true, using: :btree

end
