class Artist
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    # new song with this artist as self
    Song.new(name, self, genre)
  end

  def songs
    # array of all of songs with this artist
    Song.all.select {|s| s.artist == self}
  end

  def genres
    songs.map {|s| s.genre }
    # collects all the different genres of the artist from their songs list
  end
end
