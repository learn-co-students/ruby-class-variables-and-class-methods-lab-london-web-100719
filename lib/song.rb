class Song
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre, :genre_count, :artist_count, :count

    def initialize(name, artist, genre)
        @name = name 
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
        
    end 


    def self.artists
        return @@artists.uniq
    end

    def self.genres
        return @@genres.uniq
    end

    
    def self.artist_count
        count_artists = {}
        
        
            @@artists.each do |i|
            if count_artists[i]
               count_artists[i] += 1
            else
               count_artists[i] = 1
            end
            end 
            count_artists
           
    end
        

    def self.genre_count
        count_genres = {}
        
        
        @@genres.each do |i|
        if count_genres[i]
           count_genres[i] += 1
        else
            count_genres[i] = 1
        end
        end 
        count_genres
    end

    def self.count
        @@count
    end


end 