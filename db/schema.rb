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

ActiveRecord::Schema.define(version: 2021_09_03_124033) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.bigint "coach_id", null: false
    t.time "time_slot", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "user_name", null: false
    t.integer "day_of_week"
    t.index ["coach_id"], name: "index_appointments_on_coach_id"
  end

  create_table "available_times", force: :cascade do |t|
    t.bigint "coach_id", null: false
    t.integer "day_of_week", null: false
    t.datetime "start", null: false
    t.datetime "end", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coach_id"], name: "index_available_times_on_coach_id"
  end

  create_table "coaches", force: :cascade do |t|
    t.string "name", null: false
    t.string "timezone", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appointments", "coaches"
  add_foreign_key "available_times", "coaches"
end
