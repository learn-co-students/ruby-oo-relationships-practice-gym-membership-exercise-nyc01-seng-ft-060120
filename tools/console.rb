# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here



lifter1=Lifter.new("malcolm", 400)
lifter2=Lifter.new("john", 200)

gym1=Gym.new("Chelsea Piers")
gym2=Gym.new("equinox")

membership1=Membership.new(100, lifter1, gym1)
membership1premium=Membership.new(150, lifter1, gym1)
membership2=Membership.new(200, lifter1, gym2)
membership3=Membership.new(200, lifter2, gym2)
binding.pry