class Follower
    attr_accessor :name, :age, :life_motto, :cults
    @@all = []
    def initialize
        @@all << self
        @cults = 0
    end

    def join_cult(cult)
        cult.followers << self
        @cults += 1
    end

    def Follower.all
        @@all
    end

    def Follower.of_a_certain_age(age)
        @@all.select {|follower| follower.age >= age}
    end

    def my_cults_slogans
        Cult.all.each do |cult|
            cult.followers.each do |follower|
                if follower == self
                    puts cult.slogan
                end
            end
        end
    end

    def Follower.most_active
        most_active = {}
        max = 0
        @@all.each do |follower|
            most_active[follower] = follower.cults
        end
        most_active.values.each do |num|
            if num > max
                max = num
            end
        end
        return most_active.key(max)
    end

    def Follower.top_ten
        most_active = {}
        @@all.each do |follower|
            most_active[follower] = follower.cults
        end
        most_active = most_active.sort_by do |follower, numCults|
            -numCults
        end
        most_active = most_active.each do |follower|
            
        end
        most_active
    end

end