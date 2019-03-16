require 'pry'

class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity

  @@cart = []

  def initialize(discount = nil)
    @total = 0
    @discount = discount.to_f
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    @quantity = quantity
  end

  def apply_discount
    if @discount == 0.0
      "There is no discount to apply."
    else
      @total = @total * ((100 - @discount.to_f)/100)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items

  end

end
