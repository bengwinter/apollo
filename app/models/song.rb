class Song < ActiveRecord::Base
  has_and_belongs_to_many :genres
  has_many :orders
  has_many :playlists, through: :orders
  
  validates :url, presence: true

  before_update :capitalize

  def play(song_id)
    @song = Song.find(song_id)
    @track = SOUNDCLOUD_CLIENT.get('/resolve', url: @song.url)
    # @stream_url = SOUNDCLOUD_CLIENT.get(@track.stream_url, :allow_redirects => true)--use for custom player
    embed_html = SOUNDCLOUD_CLIENT.get('/oembed', url: @track.permalink_url).html.html_safe
    return embed_html
  end

  def favorite_add(song_id)
    Song.increment_counter(:favorites, song_id)
  end

  def favorite_remove(song_id)
    Song.decrement_counter(:favorites, song_id)
  end

  def capitalize
    self.title = self.title.split(' ').map {|w| w.capitalize }.join(' ')
    self.artist = self.artist.split(' ').map {|w| w.capitalize }.join(' ')
  end

end