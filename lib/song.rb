class Song
    @@all = []
    @@count = 0
    @@artists = []
    @@genres = []
    # @@genre_count = 0
    @@genre_count_hash = {}
    @@artist_count_hash = {}
    attr_accessor :name, :artist, :genre
    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
        @@all << self
        # @@genre_count += 1
        # Song.genre_counter(genre)
        # Song.artist_counter(artist)
    end
    # def self.genre_counter (genre)
    #     @@genre_count_hash[genre] ||= 0
    #     @@genre_count_hash[genre] += 1
    #     p @@genre_count_hash
    # end
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
        # p @@all
        first_three = []
        first_three << @@all[0]
        first_three << @@all[1]
        first_three << @@all[2]
        # p first_three
        first_three.each do |song_instance|
            # song_instance.genre
            @@genre_count_hash[song_instance.genre] ||= 0
            @@genre_count_hash[song_instance.genre] += 1
        end
        @@genre_count_hash
    end
    def self.artist_count
        # p @@all
        first_three = []
        first_three << @@all[0]
        first_three << @@all[1]
        first_three << @@all[2]
        # p first_three
        first_three.each do |song_instance|
            # song_instance.genre
            @@artist_count_hash[song_instance.artist] ||= 0
            @@artist_count_hash[song_instance.artist] += 1
        end
        @@artist_count_hash
    end
end