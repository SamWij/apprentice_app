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

ActiveRecord::Schema.define(version: 20170415020729) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "licenses", force: :cascade do |t|
    t.string   "name"
    t.string   "number"
    t.date     "expiry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "qualifications", force: :cascade do |t|
    t.string   "name"
    t.string   "school"
    t.string   "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "surname"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

  create_table "work_experiences", force: :cascade do |t|
    t.string   "company"
    t.string   "job"
    t.date     "date_started"
    t.date     "date_finished"
    t.text     "summary"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
  end

end
