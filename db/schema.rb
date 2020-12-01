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

ActiveRecord::Schema.define(version: 2020_12_01_211143) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answer_choices", force: :cascade do |t|
    t.string "choice_a", null: false
    t.string "choice_b", null: false
    t.string "choice_c", null: false
    t.string "choice_d", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "question_choice_id", null: false
    t.index ["choice_a"], name: "index_answer_choices_on_choice_a"
    t.index ["choice_b"], name: "index_answer_choices_on_choice_b"
    t.index ["choice_c"], name: "index_answer_choices_on_choice_c"
    t.index ["choice_d"], name: "index_answer_choices_on_choice_d"
  end

  create_table "polls", force: :cascade do |t|
    t.string "title_of_poll", null: false
    t.integer "user_poll_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_poll_id"], name: "index_polls_on_user_poll_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "text", null: false
    t.integer "polls_question_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["text"], name: "index_questions_on_text"
  end

  create_table "responses", force: :cascade do |t|
    t.integer "question_id", null: false
    t.integer "user_answer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_responses_on_question_id"
    t.index ["user_answer_id"], name: "index_responses_on_user_answer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "username_id", null: false
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
