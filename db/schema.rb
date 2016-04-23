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

ActiveRecord::Schema.define(version: 20160423212627) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_types", force: :cascade do |t|
    t.string   "action_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "credits", force: :cascade do |t|
    t.string   "credit_code"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "gear_actions", force: :cascade do |t|
    t.integer  "action_type_id"
    t.string   "owner"
    t.integer  "net_type_id"
    t.integer  "region_id"
    t.integer  "reason_id"
    t.integer  "credit_id"
    t.string   "disposal_receipt"
    t.boolean  "unconfirmed_disposal"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "gear_actions", ["action_type_id"], name: "index_gear_actions_on_action_type_id", using: :btree
  add_index "gear_actions", ["credit_id"], name: "index_gear_actions_on_credit_id", using: :btree
  add_index "gear_actions", ["net_type_id"], name: "index_gear_actions_on_net_type_id", using: :btree
  add_index "gear_actions", ["reason_id"], name: "index_gear_actions_on_reason_id", using: :btree
  add_index "gear_actions", ["region_id"], name: "index_gear_actions_on_region_id", using: :btree

  create_table "net_types", force: :cascade do |t|
    t.string   "net_code"
    t.float    "mesh_size"
    t.float    "twine_size"
    t.integer  "strands"
    t.string   "net_construction"
    t.string   "twine_type"
    t.string   "twine_material"
    t.string   "net_use"
    t.string   "origin"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "reasons", force: :cascade do |t|
    t.string   "reason_type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string   "region_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "source_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sources", force: :cascade do |t|
    t.string   "name",           null: false
    t.integer  "source_type_id", null: false
    t.string   "url",            null: false
    t.text     "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "sources", ["source_type_id"], name: "index_sources_on_source_type_id", using: :btree

  add_foreign_key "gear_actions", "action_types"
  add_foreign_key "gear_actions", "credits"
  add_foreign_key "gear_actions", "net_types"
  add_foreign_key "gear_actions", "reasons"
  add_foreign_key "gear_actions", "regions"
  add_foreign_key "sources", "source_types"
end
