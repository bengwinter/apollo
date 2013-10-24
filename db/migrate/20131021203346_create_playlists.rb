class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :name, default: 'Untitled Playlist'
      t.belongs_to :user, index:true
    end
  end
end