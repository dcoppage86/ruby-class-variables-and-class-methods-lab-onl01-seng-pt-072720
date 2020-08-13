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
  
  
    
  
end

