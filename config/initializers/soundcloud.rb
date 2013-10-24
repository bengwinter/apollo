soundcloud_client_id = ENV['SOUNDCLOUD_CLIENT_ID'] | ""

SOUNDCLOUD_CLIENT = SoundCloud.new({
  client_id: soundcloud_client_id
})