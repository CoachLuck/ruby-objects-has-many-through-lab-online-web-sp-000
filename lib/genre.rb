class Genre
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    # find all songs with matching genre
    Song.all.select {|s| s.genre == name}
  end

  def artists
    songs.map {|s| s.artist}
    # collects each artist for every song in the main collect that has a matching genre
  end
end
