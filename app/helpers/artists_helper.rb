module ArtistsHelper

  def display_artist
    if self.artist_id.present?
      link_to self.artist.name, artist_path(self.artist)
    else
      link_to "Add Artist", edit_song_path(song)
    end
  end

end
