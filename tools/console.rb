# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


lifter1 = Lifter.new("Jim", 1000)
lifter2 = Lifter.new("Annie", 4000)
lifter3 = Lifter.new("Bjorn", 500)
lifter4 = Lifter.new("Richard", 3000)
lifter5 = Lifter.new("Sam", 1500)
lifter6 = Lifter.new("Katrin", 3600)

gym1 = Gym.new("Meatheads")
gym2 = Gym.new("The Best Gym")
gym3 = Gym.new("The Dirty Gym")
gym4 = Gym.new("The Fancy Gym")

membership1 = Membership.new(150, lifter1, gym1)
membership2 = Membership.new(250, lifter1, gym4)
membership3 = Membership.new(50, lifter2, gym2)
membership4 = Membership.new(150, lifter1, gym1)
membership5 = Membership.new(250, lifter6, gym4)
membership6 = Membership.new(150, lifter3, gym1)
membership7 = Membership.new(200, lifter4, gym3)
membership8 = Membership.new(250, lifter5, gym4)
membership9 = Membership.new(150, lifter5, gym2)


Pry.start
