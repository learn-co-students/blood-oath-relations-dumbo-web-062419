require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new
cult1.name="Peter's cult"
cult1.location = "flatiron school"
cult1.founding_year = 1
cult1.slogan = "Learn Love Code"
cult2 = Cult.new
cult2.location = "flatiron school"
cult2.slogan = "I'm in Hell"
cult3 = Cult.new 
cult3.location ="hell"

follower1 = Follower.new
follower1.name = "follower1"
follower2 = Follower.new
follower2.name = "follower2"

cult1.recruit_follower(follower1)
cult1.recruit_follower(follower2)
cult2.recruit_follower(follower1)

cult1.cult_population

bob = Follower.new
bob.name = "bob"

follower1.age = 16
bob.age = 17
follower2.age =18 

bloody = BloodOath.new
peter = BloodOath.new

peter.initiation_date = "1999-07-14"

follower1.life_motto = "FIDLAR"
follower2.life_motto = "My name is Peter"
bob.life_motto = "We can do it!"

follower3 = Follower.new
follower3.name = "follower3"
follower4 = Follower.new
follower4.name = "follower4"
follower5 = Follower.new
follower5.name = "follower5"
follower6 = Follower.new
follower6.name = "follower6"
follower7 = Follower.new
follower7.name = "follower7"
follower8 = Follower.new
follower8.name = "follower8"
follower9 = Follower.new
follower9.name = "follower9"
follower10 = Follower.new
follower10.name = "follower10"

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
