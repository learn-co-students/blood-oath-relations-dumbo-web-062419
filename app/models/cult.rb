class Cult

    attr_accessor :slogan, :cult_population
    attr_reader :name, :founding_year, :location

    def initialize(name,location,founding_year,slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
    end

end