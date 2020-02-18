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

ActiveRecord::Schema.define(version: 2020_02_15_070654) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.bigint "question_id"
    t.bigint "choice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["choice_id"], name: "index_answers_on_choice_id"
    t.index ["question_id", "choice_id"], name: "index_answers_on_question_id_and_choice_id", unique: true
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "choices", force: :cascade do |t|
    t.text "description", null: false
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_choices_on_question_id"
  end

  create_table "course_instructors", force: :cascade do |t|
    t.bigint "course_id"
    t.bigint "instructor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_instructors_on_course_id"
    t.index ["instructor_id"], name: "index_course_instructors_on_instructor_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "code"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_courses_on_code", unique: true
    t.index ["title"], name: "index_courses_on_title", unique: true
  end

  create_table "exams", force: :cascade do |t|
    t.string "title"
    t.integer "marks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title"], name: "index_exams_on_title", unique: true
  end

  create_table "instructors", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_instructors_on_email", unique: true
  end

  create_table "papers", force: :cascade do |t|
    t.bigint "session_id"
    t.bigint "program_id"
    t.bigint "exam_id"
    t.bigint "course_id"
    t.bigint "instructor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time "allowedtime", null: false
    t.index ["course_id"], name: "index_papers_on_course_id"
    t.index ["exam_id"], name: "index_papers_on_exam_id"
    t.index ["instructor_id"], name: "index_papers_on_instructor_id"
    t.index ["program_id"], name: "index_papers_on_program_id"
    t.index ["session_id"], name: "index_papers_on_session_id"
  end

  create_table "program_sessions", force: :cascade do |t|
    t.bigint "program_id"
    t.bigint "session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["program_id"], name: "index_program_sessions_on_program_id"
    t.index ["session_id"], name: "index_program_sessions_on_session_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string "name", null: false
    t.string "nature", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.text "description", null: false
    t.integer "marks"
    t.bigint "paper_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["paper_id"], name: "index_questions_on_paper_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.date "from", null: false
    t.date "to", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["from", "to"], name: "index_sessions_on_from_and_to", unique: true
  end

  add_foreign_key "answers", "choices"
  add_foreign_key "answers", "questions"
  add_foreign_key "choices", "questions"
  add_foreign_key "course_instructors", "courses"
  add_foreign_key "course_instructors", "instructors"
  add_foreign_key "papers", "courses"
  add_foreign_key "papers", "exams"
  add_foreign_key "papers", "instructors"
  add_foreign_key "papers", "programs"
  add_foreign_key "papers", "sessions"
  add_foreign_key "program_sessions", "programs"
  add_foreign_key "program_sessions", "sessions"
  add_foreign_key "questions", "papers"
end
