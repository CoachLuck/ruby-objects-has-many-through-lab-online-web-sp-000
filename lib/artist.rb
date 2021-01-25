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

  def new_song(name)
    # new song with this artist as self
  end

  def songs 
    # array of all of songs with this artist
  end

  def genres
    # collects all the different genres of the artist from their songs list
  end
end
