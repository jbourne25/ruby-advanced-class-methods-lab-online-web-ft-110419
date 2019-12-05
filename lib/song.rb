class Song 
  
  @@all = []
  
  attr_accessor :name, :artist_name
  
  
  def self.create 
    song = self.new 
    self.all << song  
    song 
  end 
  
  def self.new_by_name(title)
    song = Song.new
    song.name = title  
    song 
  end 
  
  def self.create_by_name(title)
    song = self.create  
    song.name = title 
    song 
  end 
  
  def self.find_by_name(title)
    result = @@all.find{ |song| song.name == title }
    result
  end 
  
  def self.find_or_create_by_name(title)
    result = self.find_by_name(title)
      if result
        result
      else 
        self.create_by_name(title)
      end
    
  end 
  
  def self.alphabetical
    sort = self.all.sort_by{ |song| song.name }
    sort 
  end 
  
  def self.new_from_filename(filename)
    song_array = filename.split(" - ")
    song_array[1] = song_array[1].chomp(".mp3")
    song = self.new
    song.name = song_array[1]
    song.artist_name = song_array[0]
    song
  end
  
  def self.create_from_filename(filename)
    result = self.new_from_filename(filename)
    song = self.create
    song.name = result.name
    song.artist_name = result.artist_name
    song
  end 
  
  def self.destroy_all
    self.all.clear
  end 
  
  def self.all 
    @@all 
  end 
  
  
  
end 





















