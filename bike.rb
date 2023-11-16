# Bike
require_relative 'cargoManager'

class Bike

  STANDARD_WEIGHT = 200 # lbs


  attr_accessor :id, :color, :price, :weight, :rented

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @cargo_manager = cargoManager.new
  end

  def rent!
    self.rented = true
  end

  def add_cargo_to_bike(cargo)
    @cargo_manager.add_cargo(cargo)
  end

  def remove_cargo_from_bike(cargo)
    @cargo_manager.remove_cargo(cargo)
  end

  def remaining_cargo_capacity
    cargo_manager.pannier_remaining_capacity
  end
end
