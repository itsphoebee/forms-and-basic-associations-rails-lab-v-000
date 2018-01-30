class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def genre_name=
  end

  def genre_name
    self.genre.name
  end
end
