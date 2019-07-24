class Song
  attr_reader :id
  attr_accessor :name
  @@songs = {}
  @@total_rows = 0
  def self.all
    @@songs.values
  end
  def self.find(id)
    @@songs[id]
  end
  def self.clear
    @@songs = {}
    @@total_rows = 0
  end
  def self.find_by_album
    
  end
  def initialize(name, id)
    @name = name
    @id = id || @@total_rows += 1
  end
  def save
    @@albums[self.id] = Album.new(self.name, self.id)
    Album.sort
  end
  def update(name)
    self.name = name.length > 0 ? name : self.name
    @@albums[self.id] = Album.new(self.name, self.id)
  end
  def delete
    @@songs.delete(self.id)
  end
end
