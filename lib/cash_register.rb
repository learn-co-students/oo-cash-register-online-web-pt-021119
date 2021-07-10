require "pry"

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction, :last_qty

# initialize new cash register instance
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = {}
  end

# adding new item to cash register instance
# adds to total, adds items to an array, and
# tracks last transaction in a hash
  def add_item(item, price, quantity=1)
    @total += (price * quantity)
    @items.fill(item, @items.size, quantity)
    @last_transaction = {item => (price * quantity)}
    @last_qty = quantity
  end

# returns new total w/ discount applied + message
  def apply_discount
    @total *= (1 - (discount * 0.01))
    if discount == 0
      return "There is no discount to apply."
    else
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

# returns array w/ all added items
  def items
    @items
  end

# updates total with items voided
# also updates items array with the last added removed
  def void_last_transaction
    @items.slice!(@items.length-@last_qty, @items.length)
    @total -= @last_transaction.values[0]
  end

end
