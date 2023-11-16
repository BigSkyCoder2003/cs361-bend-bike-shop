!# /usr/bin/env ruby

require_relative 'bike'

bike = Bike.new(1, :pink, 99.99)

bike.add_cargo_to_bike(:apples)
bike.add_cargo_to_bike(:water)
bike.add_cargo_to_bike(:repair_kit)

puts "Space for #{bike.remaining_cargo_capacity} items left."

bike.rent!
