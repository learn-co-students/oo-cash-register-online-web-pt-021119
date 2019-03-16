class CashRegister

  attr_accessor :total, :discount, :items, :last

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, qty = 1)
    qty.times do
      @items << item
    end

    @last = price * qty
    @total += @last
  end

  def apply_discount
    return 'There is no discount to apply.' unless @discount

    @total *= (1.0 - (@discount.to_f / 100.0))
    "After the discount, the total comes to $#{@total.to_i}."
  end

  def void_last_transaction
    @total -= @last
  end
end
