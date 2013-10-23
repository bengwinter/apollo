class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :playlists

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :first_playlists
  
  private 
  def first_playlists
    self.playlists << Playlist.create(name: "All")
    self.playlists << Playlist.create(name: "Favorites")
    self.playlists << Playlist.create(name: "Shared")
  end

end