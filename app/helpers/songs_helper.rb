module SongsHelper

  def display_artist
    if self.artist_name.present?
      <%= link_to self.artist.name, artist_path(self.artist) %>
    end
  end

end
