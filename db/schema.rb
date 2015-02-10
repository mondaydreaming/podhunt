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

ActiveRecord::Schema.define(version: 20150210230632) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "episodes", force: :cascade do |t|
    t.text    "title"
    t.date    "published"
    t.text    "url"
    t.text    "summary"
    t.string  "duration"
    t.text    "subtitle"
    t.integer "podcast_id"
  end

  create_table "listeners", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "username"
    t.text     "password_digest"
    t.date     "dob"
    t.string   "country"
    t.string   "email"
    t.text     "interests"
    t.text     "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
  end

  create_table "listeners_podcasts", id: false, force: :cascade do |t|
    t.integer "listener_id"
    t.integer "podcast_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text     "comment"
    t.integer  "listener_id"
    t.integer  "podcast_id"
    t.integer  "episode_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "podcasts", force: :cascade do |t|
    t.string   "title"
    t.text     "feed_url"
    t.text     "author"
    t.text     "description"
    t.text     "categories"
    t.text     "image"
    t.text     "url"
    t.text     "entries"
    t.text     "copyright"
    t.text     "subtitle"
    t.text     "language"
    t.text     "explicit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "relationships", ["followed_id"], name: "index_relationships_on_followed_id", using: :btree
  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", using: :btree
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id", using: :btree

end
