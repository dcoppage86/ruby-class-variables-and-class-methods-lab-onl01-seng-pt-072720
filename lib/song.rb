class Song 
  
  attr_accessor :name, :artist, :genre 
  
  @@song_count = 0 
  @@genres = [ ]
  @@artists = [ ]
  
  def initialize(song_name, artist, genre)
    @@name = song_name
    @@artist = artist 
    @@genre = genre 
    @@genres << @genre 
    @@artists << @artist
    @@song_count = +1 
  end
  
  def self.count 
    @@song_count
  end
  
  def self.genres  
    @@genres.uniq 
  end
  
  def self.artists 
    @@artists.uniq 
  end
  
  def self.genre_count 
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] =+ 1
      else
        genre_count[genre] = 1 
      end
    end
    genre_count
  end
  
    def self.artist_count 
    artist_count = {}
    @@artist.each do |artist|
      if artist_count[artist]
        artist_count[artist] =+ 1
      else
        artist_count[artist] = 1 
      end
    end
    artist_count
  end

end

lucifer = Song.new("Lucifer", "Jay-Z", "rap" ) 
ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap" )
hit_me = Song.new("hit me baby one more time", "Brittany Spears", "pop" )
 