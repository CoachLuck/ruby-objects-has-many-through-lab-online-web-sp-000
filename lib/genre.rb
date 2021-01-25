class Genre
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    # find all songs with matching genre
  end

  def artists
    # collects each artist for every song in the main collect that has a matching genre
  end
end
