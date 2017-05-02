require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []


  def initialize(name, artist, genre) #create new Song w. name, artist, genre, and a counter
    @name = name
    @artist = artist
    @genre = genre
    @@artists << "#{artist}"
    @@genres << "#{genre}"
    @@count += 1
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
    genre_hash = {}
    @@genres.each do |genre|
      genre_hash[genre] = @@genres.count(genre)
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.uniq.each do |artist|
      artist_hash[artist] = @@artists.count(artist)
    end
    artist_hash
  end

end
