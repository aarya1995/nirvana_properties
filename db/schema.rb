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

ActiveRecord::Schema.define(version: 20161205042034) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buildings", force: :cascade do |t|
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "num_rooms"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "technician_id"
  end

  # messages schema may need major revision
  create_table "messages", force: :cascade do |t|
    t.string   "sender"
    t.string   "recipient"
    t.string   "subject"
    t.string   "body"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "task_id"
    t.integer  "technician_id"
    t.integer  "tenant_id"
    t.integer  "property_owner_id"
  end

  create_table "property_owners", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "room_number"
    t.string   "occupied"
    t.string   "num_occupants"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "building_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "status"
    t.string   "job_taken"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "job_id"
    t.integer  "tenant_id"
    t.integer  "room_id"
    t.integer  "property_owner_id"
  end

  create_table "technicians", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "isApproved"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tenants", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "isApproved"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "building_id"
    t.integer  "room_id"
  end

  add_foreign_key "jobs", "technicians"
  add_foreign_key "messages", "property_owners"
  add_foreign_key "messages", "tasks"
  add_foreign_key "messages", "technicians"
  add_foreign_key "messages", "tenants"
  add_foreign_key "rooms", "buildings"
  add_foreign_key "tasks", "jobs"
  add_foreign_key "tasks", "property_owners"
  add_foreign_key "tasks", "rooms"
  add_foreign_key "tasks", "tenants"
  add_foreign_key "tenants", "buildings"
  add_foreign_key "tenants", "rooms"
end
