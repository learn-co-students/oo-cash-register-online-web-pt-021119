
class CashRegister

  attr_accessor :total

  def initialize(discount=0.0)
    @total = 0.0
    @discount = discount.to_f
    @items = []
    @last_transaction = 0.0
  end

  def void_last_transaction
      @total -= @last_transaction
  end

  def discount
    @discount.to_i
  end

  def add_item(item, price, qty=1)
    (1..qty).each {
      @items.push(item)
    }
    @last_transaction = price*qty
    @total += price*qty

  end

  def apply_discount()
    if @discount == 0.0
      "There is no discount to apply."
    else
      @total = @total * (1 - (@discount/100))
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

end
