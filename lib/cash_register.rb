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
    self.total -= self.discount.to_f * self.total.to_f / 100
    "After the discount, the total comes to #{@total.to_i}."
  end

  def items
    []
  end
end
