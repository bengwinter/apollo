class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :url
      t.string :source
      t.integer :plays
      t.integer :shares
      t.integer :favorites
      t.string :genre
    end
  end
end
