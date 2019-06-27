class BloodOath
    attr_accessor :initiation_date
    @@all = []
    def initialize
        @@all << self
    end

    def BloodOath.all
        @@all
    end

end