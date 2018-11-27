class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 0)
    self.total += price
    self.item << title
  end

  def apply_discount
    discount = @discount.percent_of(@total)
    @total -= discount
  end

  def items
    []
  end
end
