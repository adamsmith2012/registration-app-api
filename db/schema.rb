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

ActiveRecord::Schema.define(version: 20170531161713) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buildings", force: :cascade do |t|
    t.string   "name"
    t.string   "symbol"
    t.string   "img"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "description"
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "department_id"
    t.integer  "instructor_id"
    t.integer  "term_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "crn"
    t.integer  "credits"
    t.integer  "cap"
    t.integer  "enrolled"
    t.index ["department_id"], name: "index_courses_on_department_id", using: :btree
    t.index ["instructor_id"], name: "index_courses_on_instructor_id", using: :btree
    t.index ["term_id"], name: "index_courses_on_term_id", using: :btree
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.string   "symbol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meetings", force: :cascade do |t|
    t.string   "time"
    t.string   "day"
    t.integer  "room_id"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_meetings_on_course_id", using: :btree
    t.index ["room_id"], name: "index_meetings_on_room_id", using: :btree
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "name"
    t.integer  "building_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["building_id"], name: "index_rooms_on_building_id", using: :btree
  end

  create_table "schedules", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_schedules_on_course_id", using: :btree
    t.index ["student_id"], name: "index_schedules_on_student_id", using: :btree
  end

  create_table "students", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "email"
    t.date     "dob"
    t.string   "num"
  end

  create_table "terms", force: :cascade do |t|
    t.string   "symbol"
    t.string   "season"
    t.integer  "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "courses", "departments"
  add_foreign_key "courses", "instructors"
  add_foreign_key "courses", "terms"
  add_foreign_key "meetings", "courses"
  add_foreign_key "meetings", "rooms"
  add_foreign_key "rooms", "buildings"
  add_foreign_key "schedules", "courses"
  add_foreign_key "schedules", "students"
end
