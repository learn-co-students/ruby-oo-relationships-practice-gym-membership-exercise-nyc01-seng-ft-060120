class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self 
  end

  def self.all
    @@all 
  end 

  def memberships
    Membership.all.select {|membership| membership == self} 
  end 

  def gyms
    membership.select {|membership| membership.gym == self}
  end 

  def average
    total = 0 
    Lifter.all.each do |lift|
      lift.lift_total += total  
    end 
    total/Lifter.all.count  
  end 

  def total_cost
    total = 0 
    memberships.each do |membership|
      membership.cost += total 
    end 
    total 
  end

  def new_gym(gym,cost)
    Membership.new(self,gym,cost)
  end 

end
