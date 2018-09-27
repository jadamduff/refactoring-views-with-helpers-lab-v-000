class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    if Artist.find_by(name: name)
      @artist = Artist.find_or_create_by(name: name)
      self.artist_id = @artist.id
      self.save
    end
  end
end
