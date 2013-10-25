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

ActiveRecord::Schema.define(version: 20131025233129) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "genres", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genres_songs", id: false, force: true do |t|
    t.integer "genre_id"
    t.integer "song_id"
  end

  add_index "genres_songs", ["genre_id", "song_id"], name: "index_genres_songs_on_genre_id_and_song_id", using: :btree
  add_index "genres_songs", ["genre_id"], name: "index_genres_songs_on_genre_id", using: :btree
  add_index "genres_songs", ["song_id"], name: "index_genres_songs_on_song_id", using: :btree

  create_table "orders", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "song_id"
    t.integer  "playlist_id"
    t.integer  "order",       default: 0
  end

  add_index "orders", ["playlist_id"], name: "index_orders_on_playlist_id", using: :btree
  add_index "orders", ["song_id"], name: "index_orders_on_song_id", using: :btree

  create_table "playlists", force: true do |t|
    t.string  "name",    default: "Untitled Playlist"
    t.integer "user_id"
  end

  add_index "playlists", ["user_id"], name: "index_playlists_on_user_id", using: :btree

  create_table "songs", force: true do |t|
    t.string  "title",     default: "No Title"
    t.string  "artist",    default: "No Artist"
    t.string  "url"
    t.string  "source",    default: "SoundCloud"
    t.integer "plays"
    t.integer "shares"
    t.integer "favorites"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",       null: false
    t.string   "encrypted_password",     default: "",       null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,        null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.string   "gender"
    t.string   "city"
    t.string   "state"
    t.string   "image"
    t.string   "designation",            default: "person"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
