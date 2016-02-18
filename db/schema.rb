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

ActiveRecord::Schema.define(version: 20160217055227) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string   "objectId"
    t.boolean  "featured"
    t.integer  "network_id"
    t.date     "updatedAt"
    t.string   "url"
    t.string   "event_date"
    t.string   "location"
    t.string   "title"
    t.integer  "subscribe_count"
    t.date     "createdAt"
    t.string   "description"
    t.string   "meetup_event_id"
    t.string   "time_zone"
    t.string   "hex_color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "networks", force: :cascade do |t|
    t.string   "objectId"
    t.integer  "awesome_count"
    t.string   "image_url"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "meetup_group_id"
    t.string   "meetup_url"
    t.string   "time_zone"
    t.string   "title"
    t.date     "createdAt"
    t.date     "updatedAt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personalization_answers", force: :cascade do |t|
    t.string   "objectId"
    t.integer  "personalization_question_id"
    t.string   "detail"
    t.date     "createdAt"
    t.date     "updatedAt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personalization_questions", force: :cascade do |t|
    t.string   "objectId"
    t.string   "detail"
    t.date     "createdAt"
    t.date     "updatedAt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "objectId"
    t.string   "full_name"
    t.string   "image_url"
    t.string   "job_title"
    t.decimal  "latitude",   precision: 15, scale: 10
    t.decimal  "longitude",  precision: 15, scale: 10
    t.string   "network"
    t.string   "photo"
    t.integer  "theme_type"
    t.integer  "userId"
    t.datetime "createdAt"
    t.datetime "updatedAt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "replies", force: :cascade do |t|
    t.string   "objectId"
    t.string   "child_post_id"
    t.date     "createdAt"
    t.string   "parent_post_id"
    t.date     "updatedAt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscribes", force: :cascade do |t|
    t.string   "objectId"
    t.integer  "event_id"
    t.integer  "feature_id"
    t.integer  "network_id"
    t.boolean  "subscribed"
    t.integer  "user_id"
    t.date     "createdAt"
    t.date     "updatedAt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "email"
    t.json     "tokens"
    t.string   "username",               default: "",      null: false
    t.boolean  "emailVerified",          default: false
    t.integer  "profile_id"
    t.string   "phone",                  default: "",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree

end
