require 'pry'

class Artist
  extend Memorable::ClassMethods
  extend Findable
  include Paramable
  include Memorable::InstanceMethods
  
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    super               
    @songs = []
  end

#super will tell that method to look up its behavior in the method of the same name in the parent, or super, class. A method that includes the super keyword will execute any code placed inside the super class' method of the same name, and then execute any code inside the child class' method.

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
