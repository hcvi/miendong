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

ActiveRecord::Schema.define(version: 20151124153215) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.string   "image_url"
    t.integer  "company_id"
    t.string   "tags"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "tax_code"
    t.string   "address"
    t.string   "home_phone"
    t.string   "mobile_phone"
    t.string   "work_phone"
    t.string   "email"
    t.string   "ceo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "longitude"
    t.float    "latitude"
    t.string   "background_url",    limit: 2083
    t.string   "logo"
    t.string   "image_url",         limit: 2083
    t.string   "facebook"
    t.string   "google_plus"
    t.string   "twiter"
    t.string   "youtube"
    t.string   "linkedin"
    t.string   "partners",                       default: [], array: true
    t.string   "about_us_title"
    t.text     "about_us_content"
    t.string   "image_title"
    t.text     "image_description"
  end

  create_table "company_translations", force: true do |t|
    t.integer  "company_id",        null: false
    t.string   "locale",            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "address"
    t.string   "about_us_title"
    t.text     "about_us_content"
    t.string   "image_title"
    t.text     "image_description"
  end

  add_index "company_translations", ["company_id"], name: "index_company_translations_on_company_id", using: :btree
  add_index "company_translations", ["locale"], name: "index_company_translations_on_locale", using: :btree

  create_table "contacts", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "company"
    t.string   "subject"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address"
  end

  create_table "image_translations", force: true do |t|
    t.integer  "image_id",   null: false
    t.string   "locale",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
  end

  add_index "image_translations", ["image_id"], name: "index_image_translations_on_image_id", using: :btree
  add_index "image_translations", ["locale"], name: "index_image_translations_on_locale", using: :btree

  create_table "images", force: true do |t|
    t.integer  "company_id"
    t.integer  "service_id"
    t.integer  "blog_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url_thumb",  limit: 2083
    t.string   "url",        limit: 2083
    t.integer  "product_id"
    t.string   "title"
    t.string   "position"
  end

  create_table "product_translations", force: true do |t|
    t.integer  "product_id",          null: false
    t.string   "locale",              null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.text     "description"
    t.text     "summary_description"
  end

  add_index "product_translations", ["locale"], name: "index_product_translations_on_locale", using: :btree
  add_index "product_translations", ["product_id"], name: "index_product_translations_on_product_id", using: :btree

  create_table "products", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "company_id"
    t.integer  "service_id"
    t.string   "service_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_url",           limit: 2083
    t.text     "summary_description"
    t.integer  "status"
    t.string   "slug"
  end

  create_table "service_translations", force: true do |t|
    t.integer  "service_id",  null: false
    t.string   "locale",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.text     "description"
    t.text     "sub_service"
  end

  add_index "service_translations", ["locale"], name: "index_service_translations_on_locale", using: :btree
  add_index "service_translations", ["service_id"], name: "index_service_translations_on_service_id", using: :btree

  create_table "services", force: true do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.text     "sub_service"
    t.string   "image_url",   limit: 2083, default: "{}"
    t.string   "icon"
  end

end
