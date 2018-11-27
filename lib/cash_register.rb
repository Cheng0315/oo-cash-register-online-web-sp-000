class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    self.items << title
  end

  def apply_discount
    discount = @discount.float / @total.float * 100
    @total -= discount
  end

  def items
    []
  end
end
