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
      t.belongs_to :genre, index:true
    end
  end
end