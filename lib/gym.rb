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

  def memberships
    Membership.all.select { |membership| membership.gym == self }
  end

  def lifters
    self.memberships.map {|membership| membership.lifter }
  end

  def lifters_by_name
    self.lifters.map{ |lifter| lifter.name }
  end

  def gym_lift_total
    self.lifters.inject(0){|sum, e| sum + e.lift_total}
  end
end
