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

ActiveRecord::Schema.define(version: 2021_07_25_122647) do

  create_table "survey_events", force: :cascade do |t|
    t.integer "survey_id", null: false
    t.string "event_type"
    t.json "payload"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["survey_id"], name: "index_survey_events_on_survey_id"
  end

  create_table "surveys", force: :cascade do |t|
    t.string "fuel_type"
    t.string "boiler_type"
    t.string "current_room"
    t.boolean "resettle", default: false, null: false
    t.boolean "convert_to_combi", default: false, null: false
    t.string "water_velocity"
    t.string "new_room"
    t.string "property_type"
    t.boolean "over_sec_floor", default: false, null: false
    t.boolean "flue_ext_access", default: false, null: false
    t.string "flue_location"
    t.string "flue_roof"
    t.string "flue_position"
    t.integer "num_bed"
    t.integer "num_bath"
    t.integer "num_shower"
    t.boolean "therm_valve", default: false, null: false
    t.boolean "deleted", default: false, null: false
    t.string "user_id", default: ""
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "survey_id", null: false
    t.string "name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "user_id", default: ""
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["survey_id"], name: "index_users_on_survey_id"
  end

  add_foreign_key "survey_events", "surveys"
  add_foreign_key "users", "surveys"
end
