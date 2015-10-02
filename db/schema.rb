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

ActiveRecord::Schema.define(version: 20150330162055) do

  create_table "favourites", force: :cascade do |t|
    t.integer "subject_id",  limit: 4
    t.integer "resource_id", limit: 4
    t.integer "user_id",     limit: 4
    t.boolean "is_subject",  limit: 1
  end

  add_index "favourites", ["resource_id"], name: "index_favourites_on_resource_id", using: :btree
  add_index "favourites", ["subject_id"], name: "index_favourites_on_subject_id", using: :btree
  add_index "favourites", ["user_id"], name: "index_favourites_on_user_id", using: :btree

  create_table "ratings", force: :cascade do |t|
    t.integer  "value",       limit: 4
    t.integer  "resource_id", limit: 4
    t.integer  "user_id",     limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ratings", ["resource_id"], name: "index_ratings_on_resource_id", using: :btree
  add_index "ratings", ["user_id"], name: "index_ratings_on_user_id", using: :btree

  create_table "resources", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "source",     limit: 255
    t.string   "difficulty", limit: 255
    t.integer  "subject_id", limit: 4
    t.string   "link",       limit: 255
    t.integer  "user_id",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "resources", ["subject_id"], name: "index_resources_on_subject_id", using: :btree
  add_index "resources", ["user_id"], name: "index_resources_on_user_id", using: :btree

  create_table "subjects", force: :cascade do |t|
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "name",           limit: 255
    t.string   "description",    limit: 255
    t.string   "category",       limit: 255
    t.string   "tags",           limit: 255
    t.string   "image",          limit: 255
    t.integer  "user_count",     limit: 4
    t.integer  "resource_count", limit: 4
    t.integer  "user_id",        limit: 4
  end

  add_index "subjects", ["user_id"], name: "index_subjects_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",                   limit: 255
    t.integer  "subject_id",             limit: 4
    t.string   "image",                  limit: 255
    t.string   "favourite_subjects",     limit: 255
    t.string   "favourite_resources",    limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["subject_id"], name: "index_users_on_subject_id", using: :btree

  add_foreign_key "favourites", "resources"
  add_foreign_key "favourites", "subjects"
  add_foreign_key "favourites", "users"
  add_foreign_key "subjects", "users"
end
