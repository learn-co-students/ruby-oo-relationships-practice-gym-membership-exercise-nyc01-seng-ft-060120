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
  def all_memberships
    Membership.all.select do |membership|
      membership.gym == self
    end
  end
  def all_lifters_at_gym
    all_memberships.map do |membership|
      membership.lifter
    end
  end

  def all_lifter_names_at_gym
    all_memberships.map do |membership|
      membership.lifter.name
    end
  end

  def lifter_total
    all_memberships.map do |membership|
      membership.lifter.lift_total
    end.sum
  end


end
