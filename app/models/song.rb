class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    @artist.name
  end

  def artist_name=(name)
    @artist = Artist.find_by(name: name)
    this.artist_id = @artist.id
    this.save
  end
end
