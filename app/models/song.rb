class Song < ActiveRecord::Base
  belongs_to :genre
  has_many :orders
  has_many :playlists, through: :orders
  
  validates :url, presence: true

  def play(song_id)
    @song = Song.find(song_id)
    @track = SOUNDCLOUD_CLIENT.get('/resolve', :url => @song.url)
    # @stream_url = SOUNDCLOUD_CLIENT.get(@track.stream_url, :allow_redirects => true)
    embed_html = SOUNDCLOUD_CLIENT.get('/oembed', :url => @track.permalink_url).html.html_safe
    return embed_html
  end

  def order
  end

  def increase_favorite(song)
    current_user.playlists.find_by_name("Favorites") << song
    increment!(favorites, by = 1)
  end

end

# # create client with your app's credentials
# client = Soundcloud.new(:client_id => 'YOUR_CLIENT_ID')

# # a permalink to a track
# track_url = 'http://soundcloud.com/forss/voca-nomen-tuum'

# # resolve track URL into track resource
# track = client.get('/resolve', :url => track_url)

# # now that we have the track id, we can get a list of comments, for example
# client.get("/tracks/#{track.id}/comments").each do |comment|
#   puts "Someone said: #{comment.body} at #{comment.timestamp}"
# end

#increment!(attribute, by = 1)