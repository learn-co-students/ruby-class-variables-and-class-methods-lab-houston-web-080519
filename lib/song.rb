require 'pry'
class Song

    @@artists = []
    @@genres = []
    @@count = 0

    @@genres_count = Hash.new(0)
    @@artists_count = Hash.new(0)

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@artists.push(artist)
        @@genres.push(genre)
    end

    def self.count
        return @@count
    end

    def self.genres
        return @@genres.uniq
    end

    def self.artists
        return @@artists.uniq
    end

    def self.genre_count
        @@genres.inject(@@genres_count) {|total, x| total[x] += 1 ;total}
    end

    def self.artist_count
        @@artists.each {|artist| @@artists_count[artist] += 1}
    end


end

x = Song.new("Delusional", "Charlie Allen", "Folk")


puts Song.artists