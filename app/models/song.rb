class Song < ActiveRecord::Base
  belongs_to :genre
  has_many :orders
  has_many :playlists, through: :orders
  
  validates :url, presence: true

  def play(song_id)
    @song = Song.find(song_id)
    @track = SOUNDCLOUD_CLIENT.get('/resolve', :url => @song.url)
    # @stream_url = SOUNDCLOUD_CLIENT.get(@track.stream_url, :allow_redirects => true)--use for custom player
    embed_html = SOUNDCLOUD_CLIENT.get('/oembed', :url => @track.permalink_url).html.html_safe
    return embed_html
  end

  def increase_favorite(a)
    a.increment!(favorites, by = 1)
  end

end