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

  create_table "schoolenrollments", id: false, force: true do |t|
    t.string   "academyYear"
    t.integer  "student_id"
    t.integer  "school_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "schoolenrollments", ["school_id"], name: "index_schoolEnrollments_on_school_id", using: :btree
  add_index "schoolenrollments", ["student_id"], name: "index_schoolEnrollments_on_student_id", using: :btree

  create_table "schools", force: true do |t|
    t.integer  "user_id"
    t.string   "user_type"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "schools", ["user_id"], name: "schools_users_fk", using: :btree

  create_table "students", force: true do |t|
    t.integer  "user_id",    null: false
    t.string   "user_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "students", ["user_id"], name: "students_users_fk", using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "schoolenrollments", "schools", name: "enrollments_schools_fk"
  add_foreign_key "schoolenrollments", "students", name: "enrollments_students_fk"

  add_foreign_key "schools", "users", name: "schools_users_fk"

  add_foreign_key "students", "users", name: "students_users_fk"

end
