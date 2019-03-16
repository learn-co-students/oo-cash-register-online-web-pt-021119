require 'pry'

class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity

  def initialize(discount = nil)
    @total = 0
    @discount = discount.to_f
    @@cart = []
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    @price = price
    @quantity = quantity
    quantity.times do
      @@cart << title
    end

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
    @@cart
  end

  def void_last_transaction
    @total -= @price
  end
end
