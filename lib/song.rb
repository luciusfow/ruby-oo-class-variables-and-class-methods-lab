require 'pry'
class Song
    
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists =[]
    @@genres = []
    # @@genre_count = {}
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << @artist
        @@genres << @genre
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
    
        #is a class method that returns a hash of genres and the number of songs that have those genres 
        # @@genres.to_histogram
        # # @@genres.to_h
        # genre_hash = {}
        # binding.pry
        # @@genres.each do |genre|
        #     if genre_count [genre]
        #         genre_count[genre] += 1
        #     else
        #         genre_count[genre] = 1
        # end
        #     genre_count
        # end
        # genre_hash = {}
        # # binding.pry
        # @@genres.each do |genre|
        # genre_hash[count] 
    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
            # if !genre_count[genre]
            #     genre_count[genre] =1
            # else
            #     genre_count[genre] += 1
            # end
            if not(genre_count[genre])
                genre_count[genre] =1 
            else
                genre_count[genre] += 1
                # binding.pry
            end
        end
        genre_count
    end
    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            # binding.pry
            if not(artist_count[artist])
                artist_count[artist] =1
            else 
                artist_count[artist] +=1
            end
        end
        artist_count
    end
end