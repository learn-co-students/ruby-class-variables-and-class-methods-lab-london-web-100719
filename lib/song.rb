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
        @@genres << self.genre
        @@artists << self.artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        counted_genres = {}

        @@genres.each do |i|
            if counted_genres[i]
                counted_genres[i] += 1
            else
                counted_genres[i] = 1
            end
        end
        counted_genres
    end

    def self.artist_count
        counted_artists = {}

        @@artists.each do |i|
            if counted_artists[i]
                counted_artists[i] += 1
            else
                counted_artists[i] = 1
            end
        end
        counted_artists
    end
end

#Sample facts
ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
november_rain = Song.new("November Rain", "Guns N Roses", "rock")
incarnation = Song.new("Incarnation", "Obscura", "metal")