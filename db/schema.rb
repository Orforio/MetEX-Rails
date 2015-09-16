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

ActiveRecord::Schema.define(version: 20150916231056) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "images", force: :cascade do |t|
    t.string   "filename"
    t.string   "title"
    t.string   "alt"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "images", ["imageable_type", "imageable_id"], name: "index_images_on_imageable_type_and_imageable_id", using: :btree

  create_table "interchanges", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "interchanges", ["slug"], name: "index_interchanges_on_slug", unique: true, using: :btree

  create_table "lines", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "active"
    t.string   "slug"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "order"
  end

  add_index "lines", ["order"], name: "index_lines_on_order", unique: true, using: :btree
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

  create_table "movements_stations", id: false, force: :cascade do |t|
    t.integer "movement_id"
    t.integer "station_id"
  end

  add_index "movements_stations", ["movement_id"], name: "index_movements_stations_on_movement_id", using: :btree
  add_index "movements_stations", ["station_id"], name: "index_movements_stations_on_station_id", using: :btree

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "slug"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "places", ["slug"], name: "index_places_on_slug", unique: true, using: :btree

  create_table "places_stations", id: false, force: :cascade do |t|
    t.integer "place_id"
    t.integer "station_id"
  end

  add_index "places_stations", ["place_id"], name: "index_places_stations_on_place_id", using: :btree
  add_index "places_stations", ["station_id"], name: "index_places_stations_on_station_id", using: :btree

  create_table "sounds", force: :cascade do |t|
    t.string   "filename"
    t.string   "title"
    t.integer  "length"
    t.integer  "soundable_id"
    t.string   "soundable_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "sounds", ["soundable_type", "soundable_id"], name: "index_sounds_on_soundable_type_and_soundable_id", using: :btree

  create_table "stations", force: :cascade do |t|
    t.string   "name"
    t.integer  "line_id"
    t.text     "description"
    t.boolean  "active"
    t.string   "slug"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "interchange_id"
  end

  add_index "stations", ["interchange_id"], name: "index_stations_on_interchange_id", using: :btree
  add_index "stations", ["line_id"], name: "index_stations_on_line_id", using: :btree
  add_index "stations", ["slug", "line_id"], name: "index_stations_on_slug_and_line_id", unique: true, using: :btree

end
