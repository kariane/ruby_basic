class Purchase
  #construtor:
  def initialize(value, shipping)
    @value = value
    @shipping_cost = shipping
  end
  #setters:
  def shipping_cost=(new_shipping_cost)
    @shipping_cost = new_shipping_cost
  end
  def shipping_cost
    @shipping_cost
  end
end
purchase = Purchase.new(100.00, 9.50)
purchase.shipping_cost # 9.5
purchase.shipping_cost = 3 # é possível colocar espaço antes do '='
purchase.shipping_cost