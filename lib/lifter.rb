class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms 
    self.memberships.map{ |membership| membership.gym.name}
  end

  def self.average_lift
    all_totals = @@all.inject(0){|sum, e| sum + e.lift_total}
    all_totals / @@all.length
  end

  def total_cost
    self.memberships.inject(0){|sum, e| sum + e.cost }
  end

  def new_membership(gym, membership_cost)
    Membership.new(membership_cost, self, gym)
  end


end
