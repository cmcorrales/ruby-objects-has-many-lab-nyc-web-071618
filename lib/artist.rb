require "pry"

class Artist
  attr_accessor :name

  @@count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@count += 1
  end

  def songs
    @songs
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    new_song.artist = self
    @songs << new_song
    @@count += 1
  end

  def self.song_count
    @@count
  end

end

0