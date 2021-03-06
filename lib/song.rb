require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@artists << artist
    @@genres << genre
  end

  @@count = 0
  @@genres = []
  @@artists = []

  def self.count
    @@count
  end

  def count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    Hash[*@@genres.group_by {|i| i }.flat_map{|gen, count| [gen, count.size]}]
  end

  def self.artist_count
    Hash[*@@artists.group_by {|i| i }.flat_map{|art, count| [art, count.size]}]
  end
end



# Song.count
#
# Song.genre



# Song.count
#
# Song.artist
#
# Song.genres
#
# Song.genre_count
#
# Song.artist_count
#
