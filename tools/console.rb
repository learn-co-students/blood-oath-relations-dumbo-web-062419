require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

follower1 = Follower.new("Jane",65)
bloodoath1 = Bloodoath.new(Time.now)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
