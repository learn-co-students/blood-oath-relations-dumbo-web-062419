require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("nil", "dumbo", 2019, "we are the whatever")
cult2 = Cult.new("boohoo", "NYC", 2000, "we are old")

follower1 = Follower.new("Jahaziel", 23, "yolo")
follower2 = Follower.new("L", 25, "code code code")
follower3 = Follower.new("J", 26, "jode jode jode")
follower4 = Follower.new("P", 22, "pode pode pode")
follower5 = Follower.new("Q", 24, "qode qode qode")

cult1.recruit_follower(follower1)
cult1.recruit_follower(follower3)
cult1.recruit_follower(follower4)
cult2.recruit_follower(follower2)
cult_pop1 = cult1.cult_population
cult_pop2 = cult2.cult_population
follower5.join_cult(cult2)

cult_name = Cult.find_by_name("nil")
cult_loc = Cult.find_by_location("dumbo")
cult_founding = Cult.find_by_founding_year(2000)

fol1_fellows = follower1.fellow_cult_members

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
