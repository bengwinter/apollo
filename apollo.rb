require 'pg'
require 'pry'
require 'soundcloud'
require 'sinatra'
require 'dotenv'
require 'sinatra/reloader' if development?
require 'sinatra/activerecord'
require_relative 'soundcloud_config'

set :database, {adapter: 'postgresql',
                database: 'apollo',
                host: 'localhost'}

class Users < ActiveRecord::Base
  has_many :playlists
  has_many :followers
  has_many :follows
end

class Playlist < ActiveRecord::Base
  belongs_to :users
  has_many :songs
end

class Song < ActiveRecord::Base
  belongs_to :playlists
end

class Follower < ActiveRecord::Base
  belongs_to :users
end

class Follow < ActiveRecord::Base
  belongs_to :users
end


get '/' do 
  track_url = 'https://soundcloud.com/wantigga/white-tiger-wantigga-remix'
  embed_info = @soundcloud.get('/oembed', :url => track_url)
  binding.pry
  puts embed_info
end

#USE THIS FOR NEW LAYOUT WITH STREAMING. USING EASIER METHOD WITH NO LAYOUT FOR NOW. THIS WILL ALLOW TRACKS TO BE STREAMED WITHOUT HAVING TO DISPLAY THE SOUNDCLOUD PLAYER CONSOLE#
# # create a client object with your app credentials
# client = Soundcloud.new(:client_id => 'YOUR_CLIENT_ID')

# # fetch track to stream--USE :url instead of track id to get song---or convert url into track id in database...after entereed into databse then do the .get method to grab the track
# track = client.get('/tracks/293')

# # get the tracks streaming URL
# stream_url = client.get(track.stream_url, :allow_redirects => true)

# # print the tracks stream URL
# puts stream_url.location
#END OF METHODOLOGY FOR BETTER METHOD FOR STREAMING#

# get '/' do 
#   @alltracks = 
#   erb :index
# end
