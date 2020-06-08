# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
lifter_one = Lifter.new("Max", 2300)
lifter_two = Lifter.new("Sam", 1250)
lifter_three = Lifter.new("Amanda", 300)

gym_one = Gym.new("Gym One")
gym_two = Gym.new("Gym Two")
gym_three = Gym.new("Gym Three")

Lifter.all
Lifter.average_lift_total
Gym.all

lifter_one.new_membership(80, gym_one)
lifter_one.new_membership(120, gym_three)
lifter_two.new_membership(45, gym_two)
lifter_three.new_membership(45, gym_two)

Membership.all

lifter_one.memberships
lifter_one.cost_of_memberships
lifter_one.gyms

gym_two.memberships
gym_two.lifters
gym_two.lifters_by_name
gym_two.combined_lift_total


binding.pry

puts "Gains!"
