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

ActiveRecord::Schema.define(:version => 20120622062207) do

  create_table "locations", :force => true do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
    t.string   "description"
    t.integer  "neighborhood_id"
    t.string   "city_state"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "neighborhoods", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "one_time_stops", :force => true do |t|
    t.integer  "truck_id"
    t.integer  "location_id"
    t.date     "day"
    t.integer  "start_time"
    t.integer  "end_time"
    t.boolean  "cancelled_flag"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "recurring_stops", :force => true do |t|
    t.integer  "truck_id"
    t.integer  "location_id"
    t.integer  "day_of_week"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "start_time"
    t.integer  "end_time"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "stops", :force => true do |t|
    t.integer  "truck_id"
    t.integer  "location_id"
    t.string   "hours"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.date     "day"
  end

  create_table "trucks", :force => true do |t|
    t.string   "name"
    t.string   "website"
    t.string   "twitter"
    t.string   "yelp"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
