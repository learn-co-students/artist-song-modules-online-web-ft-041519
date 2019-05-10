module Findable
  def find_by_name(name)
   self.all.detect{|a| a.name == name}
  end
end



#This module should define the method, find_by_name. This method will be used as a class method. 
#def self.find_by_name --self not needed since keyword extend will tell it is a class method
#Something like this:

# Artist.find_by_name("Adele")
# #=> #<Artistx038230sdcmdn3872>