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

ActiveRecord::Schema.define(version: 20150208103827) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "episodes", force: :cascade do |t|
    t.text    "title"
    t.date    "published"
    t.text    "url"
    t.text    "topics"
    t.text    "summary"
    t.string  "duration"
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
  end

  create_table "listeners_podcasts", id: false, force: :cascade do |t|
    t.integer "listener_id"
    t.integer "podcast_id"
  end

  create_table "podcasts", force: :cascade do |t|
    t.string   "title"
    t.text     "feed_url"
    t.text     "author"
    t.text     "description"
    t.text     "categories"
    t.text     "image"
    t.text     "last_modified"
    t.text     "url"
    t.text     "entries"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
