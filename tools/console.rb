# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
lifter1 = Lifter.new("Brian", 130)
lifter2 = Lifter.new("Raul", 210)
lifter3 = Lifter.new("Alec", 95)
lifter4 = Lifter.new("Andres", 175)
lifter5 = Lifter.new("Kishana", 80)
lifter6 = Lifter.new("Jesus", 150)
lifter7 = Lifter.new("Angelo", 100)
lifter8 = Lifter.new("Davi", 200)

gym1 = Gym.new("LifeTime")
gym2 = Gym.new("LA Fitness")
gym3 = Gym.new("24 Hour Fitness")
gym4 = Gym.new("Planet Fitness")
gym5 = Gym.new("Gold's Gym")
gym6 = Gym.new("CrossFit")

membership1 = Membership.new(lifter1, gym1, 85)
membership2 = Membership.new(lifter2, gym5, 40)
membership3 = Membership.new(lifter3, gym2, 30)
membership4 = Membership.new(lifter4, gym2, 30)
membership5 = Membership.new(lifter5, gym3, 25)
membership6 = Membership.new(lifter6, gym1, 75)
membership7 = Membership.new(lifter7, gym4, 20)
membership8 = Membership.new(lifter8, gym1, 85)
membership9 = Membership.new(lifter2, gym6, 30)
membership10 = Membership.new(lifter5, gym6, 30)
membership11 = Membership.new(lifter1, gym2, 25)
membership12 = Membership.new(lifter8, gym2, 25)
membership13 = Membership.new(lifter7, gym5, 40)

binding.pry

puts "Gains!"
