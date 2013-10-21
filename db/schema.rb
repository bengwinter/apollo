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

ActiveRecord::Schema.define(version: 20131021214853) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "playlists_tables", force: true do |t|
    t.string "name"
    t.string "creator"
    t.string "type"
    t.string "genre"
  end

  create_table "songs_playlists", id: false, force: true do |t|
    t.integer "song_id"
    t.integer "playlist_id"
  end

  add_index "songs_playlists", ["playlist_id"], name: "index_songs_playlists_on_playlist_id", using: :btree
  add_index "songs_playlists", ["song_id", "playlist_id"], name: "index_songs_playlists_on_song_id_and_playlist_id", using: :btree
  add_index "songs_playlists", ["song_id"], name: "index_songs_playlists_on_song_id", using: :btree

  create_table "songs_tables", force: true do |t|
    t.string  "title"
    t.string  "artist"
    t.string  "url"
    t.string  "source"
    t.integer "plays"
    t.integer "shares"
    t.integer "favorites"
    t.string  "genre"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.string   "gender"
    t.string   "location"
    t.string   "image"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
