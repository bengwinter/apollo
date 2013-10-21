Playlist.create(name: "Playlist 1", creator: "Ben Winter", type: "user created", genre: "Hip Hop")
Playlist.create(name: "Playlist 2", creator: "James Blake", type: "user created", genre: "R&B")
Playlist.create(name: "Playlist 3", creator: "Pusha T", type: "auto generated", genre: "Electronic")
Playlist.create(name: "Playlist 4", creator: "Marian Hill", type: "auto generated", genre: "Alternative")

Playlist.find(1).songs.create(title: "Lovin It", aritst: "Marian Hill", url: "https://soundcloud.com/marianhill/lovit-1", source: "SoundCloud", num_plays: 2, num_shares: 5, num_fav: 10, genre: "Hip Hop")
Playlist.find(1).songs.create(title: "Whisky", aritst: "Marian Hill", url: "https://soundcloud.com/marianhill/whisky", source: "SoundCloud", num_plays: 3, num_shares: 7, num_fav: 14, genre: "Hip Hop")
Playlist.find(1).songs.create(title: "Eden", aritst: "Ben Khan", url: "https://soundcloud.com/benkhan/eden", source: "SoundCloud", num_plays: 5, num_shares: 8, num_fav: 21, genre: "Alternative")

Playlist.find(2).songs.create(title: "Undiscovered", aritst: "Laura Welsh", url: "https://soundcloud.com/laurawelsh/undiscovered-1", source: "SoundCloud", num_plays: 8, num_shares: 12, num_fav: 21, genre: "Electronic")
Playlist.find(2).songs.create(title: "Summer", aritst: "Paris Jones", url: "https://soundcloud.com/serendeee/summer-ft-april-kelly-b-a", source: "SoundCloud", num_plays: 15, num_shares: 15, num_fav: 14, genre: "Hip Hop")

Playlist.find(3).songs.create(title: "Termanology", aritst: "Take My Turn", url: "https://soundcloud.com/macmediapromo/termanology-f-action-bronson", source: "SoundCloud", num_plays: 4, num_shares: 7, num_fav: 12, genre: "Hip Hop")
Playlist.find(3).songs.create(title: "Mean Streets", aritst: "Tennis", url: "", source: "SoundCloud", num_plays: 7, num_shares: 12, num_fav: 9, genre: "Electronic")
Playlist.find(3).songs.create(title: "Dreams", aritst: "wet", url: "https://soundcloud.com/wetnyc/dreams", source: "SoundCloud", num_plays: 11, num_shares: 22, num_fav: 3, genre: "Alternative")
Playlist.find(3).songs.create(title: "Sand Through Fingers", aritst: "Handbook", url: "https://soundcloud.com/handbook/handbook-sand-through-fingers", source: "SoundCloud", num_plays: 24, num_shares: 1, num_fav: 5, genre: "Alternative")

Playlist.find(4).songs.create(title: "White Tiger Remix", aritst: "Izzy Bizu", url: "https://soundcloud.com/wantigga/white-tiger-wantigga-remix", source: "SoundCloud", num_plays: 7, num_shares: 32, num_fav: 7, genre: "Electronic")

 create_table "playlists", force: true do |t|
    t.string   "name"
    t.string   "creator"
    t.string   "type"
    t.string   "genre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "songs", force: true do |t|
    t.string   "title"
    t.string   "artist"
    t.string   "url"
    t.string   "source"
    t.integer  "num_plays"
    t.integer  "num_shares"
    t.integer  "num_fav"
    t.string   "genre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end