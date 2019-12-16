# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

fitness_first = Gym.new("Fitness First")
stone = Gym.new("Stone PT")
strongher = Gym.new("StrongHer")

tim = Lifter.new(name: "Tim", lift_total: 1000)
karl = Lifter.new(name: "Karl", lift_total: 1100)
wooly = Lifter.new(name: "Wooly", lift_total: 400)
toli = Lifter.new(name: "Toli", lift_total: 300)


10.times do 
    puts Membership.new(cost: rand(100), lifter: (Lifter.all.sample), gym: (Gym.all.sample) )
end



binding.pry

puts "Gains!"
