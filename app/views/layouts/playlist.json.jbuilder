# json.playlist do |l|
  json.artist @artist_list.all_artist_name[l]
  json.track @playlist.all_song_names[l]
  json.duration @play_time.all_song_duration[l]
# end
