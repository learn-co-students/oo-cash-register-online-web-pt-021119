class CashRegister

  require 'pry'
  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end

  def add_item(item, price, qty=1)
    item_num = 0
    @total += price*qty
    until item_num == qty
      @items << item
      item_num += 1
    end
    @last_transaction = @total
    @total
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total*((100 - @discount.to_f) / 100)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
