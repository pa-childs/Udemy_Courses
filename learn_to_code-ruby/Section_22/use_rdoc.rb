# An Album class that stores an array of songs
class Album

  include Enumerable

  # An Array object of songes. Each song is a string.
  attr_reader :songs

  # Creats a new Album with and empty songs array.
  def initialize

    @songs = []

  end

  # Add a song to the Album objects songs array.
  def add_song(song)

    songs << song

  end

  # Yeild each song in the album to a block
  def each

    songs.each do | song |

      yield song

    end

  end

end

i_megaphone = Album.new
i_megaphone.add_song("Getting Scared")
i_megaphone.add_song("Oh Me, Oh My")

puts i_megaphone.songs
