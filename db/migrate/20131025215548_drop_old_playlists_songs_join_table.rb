class DropOldPlaylistsSongsJoinTable < ActiveRecord::Migration
  def change
    drop_table :playlists_songs
  end
end
