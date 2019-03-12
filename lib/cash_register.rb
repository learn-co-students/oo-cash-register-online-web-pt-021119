require "pry"

class CashRegister
  attr_accessor :total, :discount
  attr_reader :items

  def initialize(discount = 0)
    @discount = discount
    @total = 0.0
    @items = []

  end

  def add_item(title, price, quantity = 1)
    # accepts a title and a price and increases the total (FAILED - 1)
    # also accepts an optional quantity (FAILED - 2)
    @previos_total = self.total
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
    # the cash register was initialized with an employee discount
    #   applies the discount to the total price (FAILED - 4)
    #   returns success message with updated total (FAILED - 5)
    #   reduces the total (FAILED - 6)
    # the cash register was not initialized with an employee discount
    #   returns a string error message that there is no discount to apply (FAILED - 7)
  end

  def void_last_transaction
    binding.pry
    self.total -= @previous_total
  end
end
