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

ActiveRecord::Schema.define(version: 20150528190713) do

  create_table "employee_rooms", force: :cascade do |t|
    t.integer  "employee_id", limit: 4
    t.integer  "room_id",     limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "imie",       limit: 255
    t.string   "nazwisko",   limit: 255
    t.string   "tytul",      limit: 255
    t.string   "telefon",    limit: 9
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "room_keys", force: :cascade do |t|
    t.string   "klucz",      limit: 255
    t.boolean  "zapasowy",   limit: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "room_id",    limit: 4
  end

  create_table "room_tests", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "typ_id",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "room_tests", ["typ_id"], name: "index_room_tests_on_typ_id", using: :btree

  create_table "rooms", force: :cascade do |t|
    t.string   "nazwa",      limit: 255
    t.string   "rodzaj",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "type_id",    limit: 4
    t.string   "pokoj",      limit: 255
    t.string   "string",     limit: 255
    t.string   "dom",        limit: 255
  end

  add_index "rooms", ["dom"], name: "index_rooms_on_dom", using: :btree

  create_table "roomtypes", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "take_keys", force: :cascade do |t|
    t.string   "nazwa_sali",        limit: 255
    t.string   "rodzaj_klucza",     limit: 255
    t.string   "osoba_pobierajaca", limit: 255
    t.datetime "godzina_pobrania"
    t.datetime "godzina_oddania"
    t.integer  "room_id",           limit: 4
    t.integer  "room_key_id",       limit: 4
    t.integer  "employee_id",       limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "take_keys", ["employee_id"], name: "fk_rails_5c4dbf6ddd", using: :btree
  add_index "take_keys", ["room_id"], name: "fk_rails_201884a14d", using: :btree
  add_index "take_keys", ["room_key_id"], name: "fk_rails_d8551a6d72", using: :btree

  create_table "test_views", force: :cascade do |t|
    t.string   "Sala",            limit: 255
    t.string   "Klucz",           limit: 255
    t.string   "Pracownik",       limit: 255
    t.boolean  "Pilot",           limit: 1
    t.boolean  "Kabel",           limit: 1
    t.datetime "Godzin_pobrania"
    t.datetime "Godzina_oddania"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",   null: false
    t.string   "encrypted_password",     limit: 255, default: "",   null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  limit: 1,   default: true
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "take_keys", "employees"
  add_foreign_key "take_keys", "room_keys"
  add_foreign_key "take_keys", "rooms"
end
