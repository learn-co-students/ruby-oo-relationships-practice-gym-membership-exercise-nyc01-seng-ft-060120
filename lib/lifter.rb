class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all << self
  end

  def memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gyms
    self.memberships.map do |membership|
      membership.gym
    end
  end

  def self.lift_totals
    @@all.map do |lifter|
      lifter.lift_total
    end
  end

  def self.average_lift_total
    self.lift_totals.reduce(:+).to_f / self.lift_totals.size
  end

  def total_cost
    Membership.all.map do |membership|
      membership.cost 
    end.reduce(:+)
  end

  def add_membership(cost, gym)
    Membership.new(cost, self, gym)
  end





end
