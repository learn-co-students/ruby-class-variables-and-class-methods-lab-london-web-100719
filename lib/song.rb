class Song 
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    @@hash_genre_count = {}
    @@artists_hash = {}

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
        @@genres.each do |genre|
            if @@hash_genre_count[genre]
                @@hash_genre_count[genre] += 1
            else 
                @@hash_genre_count[genre] = 1
            end 
        end 
        @@hash_genre_count
    end 

    def self.artist_count 
        @@artists.each do |artist|
            if @@artists_hash[artist]
                @@artists_hash[artist] += 1
            else
                @@artists_hash[artist] = 1
            end
        end 
        @@artists_hash
    end 
end 