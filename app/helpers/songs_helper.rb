module SongsHelper

  def display_artist
    if self.artist_id.present?
      self.artist_name
    end
  end

end
