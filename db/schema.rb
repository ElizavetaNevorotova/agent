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

ActiveRecord::Schema.define(version: 20161118182755) do

  create_table "comments", force: :cascade do |t|
    t.string   "title"
    t.string   "text"
    t.integer  "mark"
    t.integer  "worker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["worker_id"], name: "index_comments_on_worker_id"
  end

  create_table "klients", force: :cascade do |t|
    t.date     "date_of_birth"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.integer  "s_passport"
    t.integer  "n_passport"
    t.date     "date_of_passport"
    t.string   "passport_organisation"
    t.string   "property"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "realties", force: :cascade do |t|
    t.string   "kadastr_passport"
    t.integer  "estimated_cost"
    t.integer  "kind"
    t.string   "address"
    t.integer  "klient_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["klient_id"], name: "index_realties_on_klient_id"
  end

  create_table "services", force: :cascade do |t|
    t.string   "kind"
    t.integer  "price"
    t.integer  "worker_id"
    t.integer  "klient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["klient_id"], name: "index_services_on_klient_id"
    t.index ["worker_id"], name: "index_services_on_worker_id"
  end

  create_table "workers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "phone_number"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
