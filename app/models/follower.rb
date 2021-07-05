class Follower

	attr_accessor :name, :age, :life_motto

	@@all = []

	def initialize(name, age, life_motto)
		@name = name
		@age = age
		@life_motto = life_motto
		@@all << self
	end

	def self.all
		@@all
	end

	def cults
		@cults
	end

	def join_cult(cult)
		BloodOath.new(Time.now, cult, self)
	end

	def self.of_a_certain_age(age)
		self.all.select { |follower| follower.age >= age}
	end

	def cult
		BloodOath.all.select { |oath|
			oath.follower == self
		}
	end

	def fellow_cult_members
		my_oaths = self.cult
		result = []
		my_oaths.each do |oath|
			result.concat(BloodOath.all.select { |an_oath| an_oath.cult == oath.cult && an_oath.follower != self})
		end
		result
	end

end
