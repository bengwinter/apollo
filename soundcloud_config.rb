Dotenv.load

@soundcloud = SoundCloud.new({
  :client_id     => ENV["CLIENT_ID"],
  :client_secret => ENV["CLIENT_SECRET"],
  :username      => ENV["USERNAME"],
  :password      => ENV["PASSWORD"]
})