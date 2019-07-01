class BloodOath
    attr_accessor :initiation_date, :cult, :follower
    @@all = []
    def initialize(cult, follower)
        @cult = cult
        @follower = follower
        @@all << self
    end

    def BloodOath.all
        @@all
    end

    def BloodOath.first_oath
        BloodOath.all[0].follower
    end

end