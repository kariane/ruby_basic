=begin
Herança nada mais é do que a especialização de uma classe, muitas vezes
mudando apenas alguns comportamentos pontuais e ainda mantendo algumas ca-
racterísticas fundamentais, como nome de método.
=end
class Shipping
  attr_accessor :distance, :dimension
  def cost
  cubed_weight_factor = 16.7
  distance * dimension/1000 * cubed_weight_factor
  end
  end
  class UltraShipping < Shipping #Herança
  def cost
  super + (distance) * 0.07
  end
  end
  shipping = UltraShipping.new
  shipping.distance = 200
  shipping.dimension = 1.2
  p shipping.cost.round(2)