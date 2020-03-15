class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    self.all << song 
    song 
  end 
def self.new_by_name(nimi) 
song = self.new 
song.name = nimi
song 

end 
def self.create_by_name(nimi)
song = self.create
song.name = nimi  
song 

end 

def self.find_by_name(nimi)
  @@all.find{|song| song.name == nimi}

end 
def self.find_or_create_by_name(nimi)
  tulos = self.find_by_name(nimi)
  if tulos 
    tulos 
  else 
    self.create_by_name(nimi)
  end 
end 

def self.alphabetical
  jarjestetty = Song.all.sort_by{|song|song.name}
  jarjestetty
  # binding.pry
end 

def self.new_from_filename(jono)
info = jono.split(" - ")
song = self.new 
song.name = info[1].chomp(".mp3")
song.artist_name = info[0]
song  
end 

def self.create_from_filename(jono)
  info= jono.split(" - ")
  song = self.create
  song.name = info[1].chomp(".mp3")
  song.artist_name = info[0]
song

end 

def self.destroy_all
  self.all.clear
end 

end
