class Rental

  attr_reader :bike
  COST_MULTIPLIER = 2
  def initialize(bike)
    @bike = bike
    @total_cost = 0
  end

  def base_price
    self.bike.price
  end

  def total_weight
    self.bike.weight + self.bike.luggage.weight
  end
  def cost_calc
    @total_cost += self.base_price * COST_MULTIPLIER + self.weight * COST_MULTIPLIER 
  end
end
