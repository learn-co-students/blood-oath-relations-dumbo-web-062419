class Follower

attr_accessor :life_motto
attr_reader :name, :age

@@all= []

    def initialize (name, age, life_motto= "")
        @name = name 
        @age = age
        @@all << self
    end

    def self.all 
    @@all 
    end
    
end