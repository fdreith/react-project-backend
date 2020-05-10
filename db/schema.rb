# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_09_210032) do

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.integer "task_id", null: false
    t.integer "employee_id"
    t.integer "supervisor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_comments_on_employee_id"
    t.index ["supervisor_id"], name: "index_comments_on_supervisor_id"
    t.index ["task_id"], name: "index_comments_on_task_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.integer "department_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["department_id"], name: "index_employees_on_department_id"
  end

  create_table "supervisors", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.integer "department_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["department_id"], name: "index_supervisors_on_department_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "content"
    t.date "due_date"
    t.boolean "completed", default: false
    t.integer "employee_id"
    t.integer "supervisor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_tasks_on_employee_id"
    t.index ["supervisor_id"], name: "index_tasks_on_supervisor_id"
  end

  add_foreign_key "comments", "employees"
  add_foreign_key "comments", "supervisors"
  add_foreign_key "comments", "tasks"
  add_foreign_key "employees", "departments"
  add_foreign_key "supervisors", "departments"
  add_foreign_key "tasks", "employees"
  add_foreign_key "tasks", "supervisors"
end
