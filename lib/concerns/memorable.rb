module Memorable
  module ClassMethods
  def reset_all
    self.all.clear
  end

  def count
    self.all.count
  end
end
module InstanceMethods
  def initialize
    self.class.all << self
    
    #.initialize is an instance method. So, inside .initialize, self refers to the instance of the class on which you are operating. But .all is a class method. (include because instance method)
end
end
end