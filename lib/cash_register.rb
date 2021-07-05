class CashRegister
  attr_accessor :total, :discount
  attr_reader :items

  def initialize(discount = 0)
    @discount = discount
    @total = 0.0
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @previous_total = self.total
    self.total += price * quantity
    quantity.times {@items << title}
  end

  def apply_discount
    if self.discount != 0
      self.total *= (1-self.discount.to_f/100)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = @previous_total
  end
end
