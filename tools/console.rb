# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter1 = Lifter.new("Kate", 150)
lifter2 = Lifter.new("Paola", 100)

gym1 = Gym.new("Crossfit")
gym2 = Gym.new("Equinox")

membership1 = Membership.new(20, lifter1, gym1)
membership2 = Membership.new(30, lifter2, gym1)

binding.pry

puts "Gains!"
