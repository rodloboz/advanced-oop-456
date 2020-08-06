require_relative "boat"
require_relative "canoe"
require_relative "motorboat"
require_relative "sailboat"

require_relative "house"
require_relative "castle"
require_relative "butler"

require "byebug"


# DRY
# Don't Repeat Yourself

puts "----------------------- Advanced OOP: Gone Finishin' ---------------------"
canoe = Canoe.new("Voyager", 16, 3, 1.25)
p canoe
puts "This #{canoe.type} is named #{canoe.name}"

puts canoe.description

motorboat = Motorboat.new("Usain Boat", 38, 10, 3.23)
p motorboat
puts "This #{motorboat.type} is named #{motorboat.name}"

puts motorboat.description

sailboat = Sailboat.new("Black Pearl", 150, 30, 15, "Galleon")
p sailboat
puts "This #{sailboat.type} is named #{sailboat.name}"

puts sailboat.description

puts "There are the types of sailboats:"
Sailboat.types.each_with_index do |type, index|
  puts "#{index + 1} - #{type}"
end

puts "Do you have a skipper?"
puts sailboat.skipper? ? "Yes" : "No"

# Setter / Writer
sailboat.skipper = "Jack Sparrow"
puts "The #{sailboat.name}'s skipper is #{sailboat.skipper}"

puts "Do you have a skipper?"
puts sailboat.skipper? ? "Yes" : "No"


puts "----------------------- Advanced OOP: Castles and Butlers ---------------------"
castle = Castle.new("Windsor", "Alfred")
p castle

puts "Is there a butler in #{castle.name}?"
puts castle.butler? ? "Yes" : "No"

puts "The butler of #{castle.name} is #{castle.butler.name}"





