class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :name
      t.belongs_to :user, index:true
    end
  end
end