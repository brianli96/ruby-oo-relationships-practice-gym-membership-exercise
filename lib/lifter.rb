class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    self.class.all << self
  end

  def self.all
    @@all
  end

  def lifter_membership
    Membership.all.select do |pass|
      pass.lifter == self
    end  
  end

  def gym_memberships
    list_of_gyms = []
    Membership.all.each do |specific|
      if specific.lifter == self
        list_of_gyms << specific.gym
      end
    end
    list_of_gyms
  end

  def self.average_lift 
    total_average = 0
    self.all.each do |lifter|
      total_average += lifter.lift_total
    end 
    total_average = total_average / self.all.size
    total_average
  end

  def total_cost_of_lifter
    total_cost = 0
    Membership.all.each do |memberships|
      if memberships.lifter == self
        total_cost += memberships.cost
      end
    end
    total_cost
  end

  def sign_up(gym, cost)
    new_membership = Membership.new(self, gym, cost)
  end
end
