
class List
    attr_accessor :content

    @@all= []

     def initialize
       @@all << self
     end

     def self.all
        @@all
     end
end 