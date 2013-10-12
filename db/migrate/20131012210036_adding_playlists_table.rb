class AddingPlaylistsTable < ActiveRecord::Migration
  def up
    create_table :playlists do |t|
      t.string :name
      t.string :creator      
      t.string :type
      t.string :genre
      t.timestamps
    end
  end

  def down
      drop_table :playlists
  end
end
