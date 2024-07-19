# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_07_18_164026) do
  create_table "avail_courses", force: :cascade do |t|
    t.string "semester"
    t.integer "courses_id"
    t.string "days"
    t.date "date_start"
    t.date "date_end"
    t.time "time_start"
    t.time "time_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "professor_name"
    t.index ["courses_id"], name: "index_avail_courses_on_courses_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "subject"
    t.integer "c_num"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "majors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reg_classes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "avail_course_id"
    t.datetime "registration_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["avail_course_id"], name: "index_reg_classes_on_avail_course_id"
    t.index ["user_id"], name: "index_reg_classes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "major", default: "", null: false
    t.integer "unum", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "avail_courses", "courses", column: "courses_id"
  add_foreign_key "reg_classes", "avail_courses"
  add_foreign_key "reg_classes", "users"
end
