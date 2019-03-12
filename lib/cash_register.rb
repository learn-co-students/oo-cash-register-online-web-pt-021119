
class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @discount = discount
    @total = 0
  end

  def add_item(title, price)
    # accepts a title and a price and increases the total (FAILED - 1)
    # also accepts an optional quantity (FAILED - 2)
    # doesn't forget about the previous total (FAILED - 3)
  end

  def apply_discount
    # the cash register was initialized with an employee discount
    #   applies the discount to the total price (FAILED - 4)
    #   returns success message with updated total (FAILED - 5)
    #   reduces the total (FAILED - 6)
    # the cash register was not initialized with an employee discount
    #   returns a string error message that there is no discount to apply (FAILED - 7)
  end

  def items
    # returns an array containing all items that have been added (FAILED - 8)
  end

  def void_last_transaction
    # subtracts the last transaction from the total (FAILED - 9)
  end
end
