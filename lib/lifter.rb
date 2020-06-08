class Lifter

  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def new_membership(cost, gym)
    Membership.new(cost, self, gym)
  end

  def memberships
    Membership.all.select{|membership| membership.lifter == self}
  end

  def cost_of_memberships
    self.memberships.sum{|membership| membership.cost}
  end

  def gyms
    self.memberships.map{|membership| membership.gym}
  end

  def self.all
    @@all
  end

  def self.average_lift_total
    @@all.sum{|lifter| lifter.lift_total} / @@all.count
  end

end
