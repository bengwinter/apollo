class CreateSongsPlaylistsJoinTable < ActiveRecord::Migration
  def change
    create_table :playlists_songs, id: false do |t|
      t.integer :playlist_id
      t.integer :song_id
    end
  add_index :playlists_songs, :playlist_id
  add_index :playlists_songs, :song_id
  add_index :playlists_songs, [:playlist_id, :song_id]
  end
end