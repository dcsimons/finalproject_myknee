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

ActiveRecord::Schema.define(version: 20140326224346) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "patients", force: true do |t|
    t.integer  "physician_id"
    t.string   "name"
    t.string   "knee_location"
    t.string   "surgery_type"
    t.string   "knee_company"
    t.string   "knee_company_img"
    t.string   "knee_brand"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "patients", ["physician_id"], name: "index_patients_on_physician_id", using: :btree

  create_table "physicians", force: true do |t|
    t.string   "name"
    t.string   "practice"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "surveys", force: true do |t|
    t.integer  "patient_id"
    t.string   "time_period"
    t.string   "status"
    t.integer  "q1_rating"
    t.integer  "q2_rating"
    t.integer  "q3_rating"
    t.integer  "q4_rating"
    t.integer  "q5_rating"
    t.integer  "q6_rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "surveys", ["patient_id"], name: "index_surveys_on_patient_id", using: :btree

end
