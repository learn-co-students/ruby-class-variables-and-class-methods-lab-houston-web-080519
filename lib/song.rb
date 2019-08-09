require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_hash = {}
  @@artists_hash = {}
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artists.push(artist)
    @genre = genre
    @@genres.push(genre)
  end
  
  def self.count
    return @@count
  end
  
  def self.artists
    @@artists.uniq!
    return @@artists
  end
  
  def self.genres
    @@genres.uniq!
    return @@genres
  end
  
  def self.genre_count
    counter = 0
    while @@genres.length > counter do
      genre = @@genres.shift
      if @@genre_hash[genre]
        @@genre_hash[genre] += 1
      else
        @@genre_hash[genre] = 1
      end
    end
    return @@genre_hash
  end
  
  def self.artist_count
    counter = 0
    while @@artists.length > counter do
      artist = @@artists.shift
      if @@artists_hash[artist]
        @@artists_hash[artist] += 1
      else
        @@artists_hash[artist] = 1
      end
    end
    return @@artists_hash
  end
  
end