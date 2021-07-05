class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def memberships
    Membership.all.select{|membership| membership.gym == self}
  end

  def lifters
    self.memberships.map{|membership| membership.lifter}
  end

  def lifters_by_name
    self.lifters.map{|lifter| lifter.name}
  end

  def combined_lift_total
    self.lifters.sum{|lifter| lifter.lift_total}
  end

  def self.all
    @@all
  end

end
