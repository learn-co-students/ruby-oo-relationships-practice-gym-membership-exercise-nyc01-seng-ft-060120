class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all 
  end 

  def gyms
    Membership.all.select {|membership| membership.gym == self} 
  end 

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def lifters
    memberships.map {|lifter| lifter.name}
  end 

  def lift_total 
    total = 0 
    memberships.each do |lifter|
      lifter.lift_total += total 
    end 
    total 
  end 
end
