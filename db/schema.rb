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

ActiveRecord::Schema.define(version: 20140812232958) do

  create_table "appointments", force: true do |t|
    t.text     "report"
    t.integer  "doctor_id"
    t.integer  "patient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "appointment_date"
    t.string   "appointment_time"
    t.boolean  "complete",         default: false
  end

  create_table "departments", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctors", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "sex"
    t.string   "password_digest"
    t.boolean  "admin",           default: false
    t.integer  "department_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "qualification"
    t.string   "experience"
  end

  create_table "patients", force: true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "sex"
    t.integer  "age"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
