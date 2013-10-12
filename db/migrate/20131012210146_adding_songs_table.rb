class AddingSongsTable < ActiveRecord::Migration
  def up
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :url
      t.string :source
      t.integer :num_plays
      t.integer :num_shares     
      t.integer :num_fav
      t.string :genre
      t.timestamps
    end
  end

  def down
      drop_table :songs
  end
end