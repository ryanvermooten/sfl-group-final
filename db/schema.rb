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

ActiveRecord::Schema.define(version: 20140922135219) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: true do |t|
    t.integer "gardener_id"
    t.string  "water_access"
    t.boolean "tools"
    t.string  "tools_list"
  end

  create_table "attendance_registers", force: true do |t|
    t.integer  "training_session_id"
    t.boolean  "attended"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "group_id"
  end

  create_table "attendance_registers_gardeners", force: true do |t|
    t.integer "attendance_register_id"
    t.integer "gardener_id"
  end

  create_table "attendance_registers_training_sessions", force: true do |t|
    t.integer "attendance_register_id"
    t.integer "training_session_id"
    t.integer "gardener_id"
  end

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "educations", force: true do |t|
    t.integer "gardener_id"
    t.string  "level"
  end

  create_table "employements", force: true do |t|
    t.integer "gardener_id"
    t.boolean "employed"
    t.string  "type"
    t.string  "earning_power"
  end

  create_table "employments", force: true do |t|
    t.integer "gardener_id"
    t.boolean "employed"
    t.string  "employment_type"
    t.string  "earning_power"
  end

  create_table "expenditures", force: true do |t|
    t.integer "gardener_id"
    t.string  "where"
    t.string  "amount"
  end

  create_table "experiences", force: true do |t|
    t.integer "gardener_id"
    t.boolean "previous_experience"
    t.string  "experience_qualitative"
    t.boolean "currently_growing"
    t.string  "currently_growing_neg"
    t.string  "usage"
    t.string  "selling_amount"
  end

  create_table "follow_up_visit_eatings", force: true do |t|
    t.integer "gardener_id"
    t.integer "eating_sum"
    t.string  "veg_type_eaten"
    t.boolean "eating"
  end

  create_table "follow_up_visit_gardens", force: true do |t|
    t.integer "gardener_id"
    t.boolean "still_gardening"
    t.string  "rating"
    t.boolean "mini_nursery"
    t.boolean "compost_heap"
    t.boolean "trench_bed"
    t.integer "trench_bed_sum"
    t.boolean "container_garden"
    t.integer "container_garden_sum"
    t.boolean "other"
    t.string  "other_qualitative"
  end

  create_table "follow_up_visit_impressions", force: true do |t|
    t.integer "gardener_id"
    t.string  "future_plan"
    t.text    "issue"
    t.text    "positive"
    t.text    "negative"
    t.text    "general_comment"
  end

  create_table "follow_up_visit_sellings", force: true do |t|
    t.integer "gardener_id"
    t.boolean "selling"
    t.string  "selling_what"
    t.string  "selling_amount"
  end

  create_table "gardeners", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "contact_number"
    t.string   "address"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "id_number",           limit: 8
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "resume_file_name"
    t.string   "resume_content_type"
    t.integer  "resume_file_size"
    t.datetime "resume_updated_at"
    t.string   "race"
  end

  add_index "gardeners", ["group_id"], name: "index_gardeners_on_group_id", using: :btree

  create_table "gardens", force: true do |t|
    t.integer  "gardener_id"
    t.boolean  "garden_at_home"
    t.string   "garden_location"
    t.integer  "garden_l"
    t.integer  "garden_w"
    t.boolean  "garden_located_at_home"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "general_statements", force: true do |t|
    t.integer "gardener_id"
    t.string  "gardener"
    t.string  "trainer"
  end

  create_table "grants", force: true do |t|
    t.integer "gardener_id"
    t.boolean "recieved"
    t.string  "grant_type"
    t.string  "earning_power"
  end

  create_table "groups", force: true do |t|
    t.string   "group_name"
    t.string   "area"
    t.integer  "user_id"
    t.integer  "avatar"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "group_picture_file_name"
    t.string   "group_picture_content_type"
    t.integer  "group_picture_file_size"
    t.datetime "group_picture_updated_at"
  end

  create_table "healths", force: true do |t|
    t.string  "meals"
    t.string  "meals_with_veg"
    t.string  "health"
    t.string  "illness"
    t.boolean "other_illness"
    t.string  "other_illness_qual"
    t.integer "gardener_id"
  end

  create_table "living_arrangements", force: true do |t|
    t.integer "gardener_id"
    t.string  "marital_status"
    t.string  "number_of_people_in_household"
  end

  create_table "sfls", force: true do |t|
    t.integer "gardener_id"
    t.string  "referral"
    t.boolean "other_organizations"
    t.string  "other_organizations_qualitative"
    t.text    "ambition"
  end

  create_table "support_visits", force: true do |t|
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.text     "notes"
    t.integer  "gardener_id"
  end

  create_table "training_sessions", force: true do |t|
    t.integer  "attendance_registers_id"
    t.string   "name"
    t.integer  "date_held"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
