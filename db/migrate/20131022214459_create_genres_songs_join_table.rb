class CreateGenresSongsJoinTable < ActiveRecord::Migration
  def change
    create_table :songs_genres, id: false do |t|
      t.integer :song_id
      t.integer :genre_id
    end
  add_index :songs_genres, :song_id
  add_index :songs_genres, :genre_id
  add_index :songs_genres, [:song_id, :genre_id]
  end
end
