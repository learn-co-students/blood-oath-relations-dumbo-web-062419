class Cult
    attr_accessor :name, :location, :founding_year, :slogan
    attr_reader :followers
    @@all = []

    def initialize
        @@all << self
        @followers = []
    end

    def recruit_follower(follower)
        @followers << follower
        follower.cults += 1
    end

    def cult_population
        @followers.length
    end

    def Cult.all
        @@all
    end

    def Cult.find_by_name(name)
        @@all.find do |cult_instance|
            cult_instance.name == name
        end
    end

    def Cult.find_by_location(location)
        @@all.find do |cult_instance|
            cult_instance.location == location
        end
    end

    def Cult.find_by_founding_year(year)
        @@all.find do |cult_instance|
            cult_instance.founding_year == year
        end
    end

    def average_age 
        sum = 0
        @followers.each do |follower|
        sum += follower.age 
        end 
        sum.to_f / @followers.length.to_f 
    end

    def my_followers_mottos
        @followers.each do |follower|
            puts follower.life_motto
        end
    end

    def Cult.least_popular
        minimum = nil
        min = nil
        @@all.each do |cult|
            if minimum == nil || cult.followers.length < minimum
            minimum = cult.followers.length
            min = cult
            end
        end
        return min
    end 

    def Cult.most_common_location
        location_hash = {}
        @@all.each do |cult|
            if location_hash[cult.location] == nil
                location_hash[cult.location] = 1
            else
                location_hash[cult.location] += 1
            end
        end
        max = 0
        location_hash.values.each do |num|
            if num > max
                max = num
            end
        end
        location_hash.key(max)
    end

end