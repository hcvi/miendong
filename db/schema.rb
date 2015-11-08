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

ActiveRecord::Schema.define(version: 20151107163742) do

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
    t.string   "background_url",       limit: 2083
    t.string   "logo"
    t.string   "image_url",            limit: 2083
    t.string   "about_us_title_en"
    t.string   "about_us_title_vn"
    t.text     "about_us_content_vn"
    t.text     "about_us_content_en"
    t.string   "facebook"
    t.string   "google_plus"
    t.string   "twiter"
    t.string   "youtube"
    t.string   "linkedin"
    t.string   "partners",                          default: [], array: true
    t.string   "image_title_en"
    t.string   "image_title_vn"
    t.text     "image_description_en"
    t.text     "image_description_vn"
  end

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

  create_table "images", force: true do |t|
    t.integer  "company_id"
    t.integer  "service_id"
    t.integer  "blog_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "images"
    t.integer  "company_id"
    t.integer  "service_id"
    t.string   "service_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
