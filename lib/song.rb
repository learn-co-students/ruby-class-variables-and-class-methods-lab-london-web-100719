require 'pry'

class Song

    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}

    attr_reader :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
        #binding.pry
        @@genre_count[genre] ? @@genre_count[genre] += 1 : @@genre_count[genre] = 1
        @@artist_count[artist] ? @@artist_count[artist] += 1 : @@artist_count[artist] = 1
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

        @@genre_count
        
    end
    
    def self.artist_count

        @@artist_count

    end

end