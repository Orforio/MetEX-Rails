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

ActiveRecord::Schema.define(version: 20150903224156) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lines", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "active"
    t.string   "slug"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "lines", ["slug"], name: "index_lines_on_slug", unique: true, using: :btree

  create_table "movements", force: :cascade do |t|
    t.integer  "up_station_id"
    t.integer  "down_station_id"
    t.boolean  "up_allowed"
    t.boolean  "down_allowed"
    t.integer  "length"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "movements", ["down_station_id"], name: "index_movements_on_down_station_id", using: :btree
  add_index "movements", ["up_station_id"], name: "index_movements_on_up_station_id", using: :btree

  create_table "stations", force: :cascade do |t|
    t.string   "name"
    t.integer  "line_id"
    t.text     "description"
    t.boolean  "active"
    t.string   "slug"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "stations", ["line_id"], name: "index_stations_on_line_id", using: :btree
  add_index "stations", ["slug", "line_id"], name: "index_stations_on_slug_and_line_id", unique: true, using: :btree

  create_table "tracks", force: :cascade do |t|
    t.integer  "station_id"
    t.integer  "movement_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "tracks", ["movement_id"], name: "index_tracks_on_movement_id", using: :btree
  add_index "tracks", ["station_id"], name: "index_tracks_on_station_id", using: :btree

  add_foreign_key "tracks", "movements"
  add_foreign_key "tracks", "stations"
end
