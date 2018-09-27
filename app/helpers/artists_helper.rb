module ArtistsHelper

  def display_artist
    if self.artist_id.present?
      self.artist.name
    end
  end

end
