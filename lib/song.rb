class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    histogram = {}
    @@genres.map { |genre| histogram.keys.include?(genre) ? histogram[genre] += 1 : histogram[genre] = 1 }
    histogram
  end

  def self.artist_count
    histogram = {}
    @@artists.map { |artist| histogram.keys.include?(artist) ? histogram[artist] += 1 : histogram[artist] = 1 }
    histogram
  end

end