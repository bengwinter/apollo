class CreatePlaylistsTable < ActiveRecord::Migration
  def change
    create_table :playlists_tables do |t|
      t.string :name
      t.string :creator
      t.string :type
      t.string :genre
    end
  end
end
