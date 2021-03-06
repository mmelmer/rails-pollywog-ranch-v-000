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

ActiveRecord::Schema.define(version: 20170828201619) do

  create_table "frogs", force: :cascade do |t|
    t.string   "name"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "pond_id"
    t.integer  "tadpole_id"
  end

  add_index "frogs", ["pond_id"], name: "index_frogs_on_pond_id"
  add_index "frogs", ["tadpole_id"], name: "index_frogs_on_tadpole_id"

  create_table "ponds", force: :cascade do |t|
    t.string   "name"
    t.string   "water_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "frog_id"
  end

  add_index "ponds", ["frog_id"], name: "index_ponds_on_frog_id"

  create_table "tadpoles", force: :cascade do |t|
    t.string   "name"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "frog_id"
  end

  add_index "tadpoles", ["frog_id"], name: "index_tadpoles_on_frog_id"

end
