class Song

    attr_accessor :name, :artist, :genre

    @@count = 0

    @@artists = []
    @@genres = []

    @@artist_count = {}
    @@genre_count = {}

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1

        if @@artist_count.include?(self.artist)
            @@artist_count[self.artist] += 1
        else
            @@artist_count[self.artist] = 1
        end

        if @@genre_count.include?(self.genre)
            @@genre_count[self.genre] += 1
        else
            @@genre_count[self.genre] = 1
        end
        
        @@artists << self.artist 
        @@genres << self.genre
    end

    def self.count
        @@count
    end 

    def self.artists
        unique_artists = @@artists.uniq
    end 

    def self.genres
        unique_genres = @@genres.uniq
    end

    def self.artist_count
        @@artist_count
    end 

    def self.genre_count
        @@genre_count
    end
end