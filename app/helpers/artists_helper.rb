module ArtistsHelper

  def display_artist
    if self.artist_id.present?
      <%= link_to self.artist.name, artist_path(self.artist) %>
    end
  end

end


<% if display_artist %>
  <%= link_to display_artist, artist_path(song.artist) %>
<% else %>
  <%= link_to "Add Artist", edit_song_path(song) %>
<% end %>
