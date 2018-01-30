class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def genre_name=(id)
    self.genre = Genre.find(id)
  end

  def genre_name
    self.genre.name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def artist_name
    self.artist.name if self.artist
  end

  def note_contents=(notes)

  end

  def note_contents
    self.note_contents
  end
end
