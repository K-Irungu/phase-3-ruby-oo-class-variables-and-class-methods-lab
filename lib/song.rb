class Song
    attr_accessor :name, :artist, :genre
    
    @@count = 0
    @@genres = []
    @@artists = []
    

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
        @@genres.tally
    end
    
    def self.artist_count
        @@artists.tally
    end

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count = @@count + 1
        @@genres << genre
        @@artists << artist
    end

end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")

Song.new("99 Problems", "Jay-Z", "rap")
Song.new("99 Problems", "Beyonce", "rock")
Song.new("99 Problems", "Madonna", "jazz")
# pp Song.count
# pp Song.genres
# pp Song.artists
p Song.genre_count



