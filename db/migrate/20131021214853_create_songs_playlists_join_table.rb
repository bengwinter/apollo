class CreateSongsPlaylistsJoinTable < ActiveRecord::Migration
  def change
    create_table :songs_playlists, id: false do |t|
      t.integer :song_id
      t.integer :playlist_id
  end
  add_index :songs_playlists, :song_id
  add_index :songs_playlists, :playlist_id
  add_index :songs_playlists, [:song_id, :playlist_id]
  end
end
  end
end
