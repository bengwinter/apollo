class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title, default: 'No Title'
      t.string :artist, default: 'No Artist'
      t.string :url
      t.string :source, default: 'SoundCloud'
      t.integer :plays
      t.integer :shares
      t.integer :favorites
      t.belongs_to :genre, index:true
    end
  end
end