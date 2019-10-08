class Song 
  
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre 
    @@artists << artist
  end 
  
  def self.count
    @@count
  end 
  
  def self.genres
    @@genres.uniq!
  end 
  
  def self.artists
    @@artists.uniq!
  end 
  
  def self.genre_count
    genre_count = {}
    @@genres.map do |genre| 
      genre_count.keys.include?(genre)? genre_count[genre] += 1 : genre_count[genre] = 1 #update the count value 
    end 
    genre_count
  end 
  
  def self.artist_count
    artist_count = {}
    @@artists.map do |artist|
      artist_count.keys.include?(artist)? artist_count[artist] += 1 : artist_count[artist] = 1
    end
    artist_count
  end 
end 