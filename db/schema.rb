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

ActiveRecord::Schema.define(:version => 20110103125401) do

  create_table "accomodations", :force => true do |t|
    t.integer  "guest_id"
    t.string   "location"
    t.datetime "checkin"
    t.datetime "checkout"
    t.integer  "hotel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "agents", :force => true do |t|
    t.string   "agent_name"
    t.string   "agent_email"
    t.string   "location"
    t.string   "phone"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guests", :force => true do |t|
    t.string   "guest_name"
    t.string   "location"
    t.integer  "agent_id"
    t.string   "flight_num"
    t.string   "airlines"
    t.datetime "arr_date"
    t.datetime "arr_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hotels", :force => true do |t|
    t.string   "hotel_name"
    t.string   "location"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
