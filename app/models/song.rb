class Song < ActiveRecord::Base
  has_and_belongs_to_many :playlists
  belongs_to :genre
  validates :url, presence: true

  def play
    @track = SOUNDCLOUD_CLIENT.get('/tracks/293')
    puts @track.stream_url
  end

end