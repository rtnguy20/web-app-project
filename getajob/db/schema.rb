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

ActiveRecord::Schema.define(version: 20191107001608) do

  create_table "company_listings", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "website"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "company_image_url"
    t.string   "industry"
    t.string   "tags"
    t.string   "contact_info"
  end

  create_table "jobrecs", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_address"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "associate_company"
    t.string   "role"
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "company"
    t.string   "url"
    t.string   "location"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "company_id"
  end

  create_table "landings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loggings", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schooladmins", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "boss"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_profiles", force: :cascade do |t|
    t.string   "student_image"
    t.text     "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_address"
    t.string   "location_address"
    t.string   "location_city"
    t.string   "location_state"
    t.string   "location_zip"
    t.string   "mobile_phone_number"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "linkedin_url"
    t.string   "twitter_url"
    t.string   "github_url"
    t.string   "resume1"
    t.string   "resume2"
    t.string   "skills"
    t.string   "interests"
    t.string   "category"
    t.string   "review"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
