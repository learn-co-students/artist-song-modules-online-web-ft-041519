require 'pry'

class Song

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable

  attr_accessor :name, :artist

  @@all = []


  def self.all
    @@all
  end

end
