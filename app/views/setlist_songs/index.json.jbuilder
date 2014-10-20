json.array!(@setlist_songs) do |setlist_song|
  json.extract! setlist_song, :id
  json.url setlist_song_url(setlist_song, format: :json)
end
