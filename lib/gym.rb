class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def specific_gym
    Membership.all.select do |memberships|
      memberships.gym == self
    end
  end

  def all_lifters_membership
    list_of_lifters = []
    Membership.all.each do |specific|
      if specific.gym == self
        list_of_lifters << specific.lifter
      end
    end
    list_of_lifters
  end

  def names_of_lifters
    array_of_names = []
    Membership.all.each do |names|
      if names.gym == self
        array_of_names << names.lifter.name
      end
    end
    array_of_names
  end

  def combined_lift_total
    combined_total = 0
      self.all_lifters_membership.each do |lifters|
        combined_total += lifters.lift_total
      end
    combined_total
  end
end
