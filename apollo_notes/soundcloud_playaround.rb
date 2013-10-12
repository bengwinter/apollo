require 'pry'
require 'soundcloud'
require 'dotenv'
require_relative 'soundcloud_config'

# binding.pry
tracks = @client.get('/tracks', :limit => 10, :order => 'hotness')
tracks.each do |track|
  puts track.permalink_url
end