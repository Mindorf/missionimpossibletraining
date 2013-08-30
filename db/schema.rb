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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130829190542) do

  create_table "goals", :force => true do |t|
    t.integer  "indicator_id"
    t.integer  "user_id"
    t.string   "name"
    t.float    "start_value"
    t.float    "target_value"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "goals", ["indicator_id"], :name => "index_goals_on_indicator_id"
  add_index "goals", ["user_id"], :name => "index_goals_on_user_id"

  create_table "indicators", :force => true do |t|
    t.string   "name"
    t.string   "unit"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "measurements", :force => true do |t|
    t.integer  "user_id"
    t.integer  "indicator_id"
    t.float    "value"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "measurements", ["indicator_id"], :name => "index_measurements_on_indicator_id"
  add_index "measurements", ["user_id"], :name => "index_measurements_on_user_id"

  create_table "running_exercises", :force => true do |t|
    t.time     "duration"
    t.float    "distance"
    t.float    "avgpulse"
    t.integer  "workout_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "running_exercises", ["workout_id"], :name => "index_running_exercises_on_workout_id"

  create_table "strength_exercises", :force => true do |t|
    t.string   "name"
    t.integer  "sets"
    t.integer  "reps"
    t.time     "pauseduration"
    t.integer  "workout_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "strength_exercises", ["workout_id"], :name => "index_strength_exercises_on_workout_id"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.datetime "birthday"
    t.integer  "height"
    t.string   "email"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "workouts", :force => true do |t|
    t.string   "comment"
    t.time     "duration"
    t.datetime "start_time"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "workouts", ["user_id"], :name => "index_workouts_on_user_id"

end
