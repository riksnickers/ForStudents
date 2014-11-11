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

ActiveRecord::Schema.define(version: 20140623151536) do

  create_table "schools_schools", force: true do |t|
    t.integer  "user_id"
    t.string   "user_type"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "schools_schools", ["user_id"], name: "schools_schools_users_fk", using: :btree

  create_table "schools_students", force: true do |t|
    t.integer  "user_id",    null: false
    t.string   "user_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "schools_students", ["user_id"], name: "schools_students_users_fk", using: :btree

  create_table "schools_subscriptions", id: false, force: true do |t|
    t.string   "academy_year"
    t.integer  "schools_student_id"
    t.integer  "schools_school_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "schools_subscriptions", ["schools_school_id"], name: "index_schools_subscriptions_on_schools_school_id", using: :btree
  add_index "schools_subscriptions", ["schools_student_id"], name: "index_schools_subscriptions_on_schools_student_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "schools_schools", "users", name: "schools_schools_users_fk"

  add_foreign_key "schools_students", "users", name: "schools_students_users_fk"

  add_foreign_key "schools_subscriptions", "schools_schools", name: "schools_subscription_schools_fk"
  add_foreign_key "schools_subscriptions", "schools_students", name: "schools_subscription_students_fk"

end
