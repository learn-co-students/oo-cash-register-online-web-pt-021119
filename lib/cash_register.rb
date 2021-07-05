class CashRegister

  attr_accessor :total, :discount, :price, :item

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item = []
  end

  def add_item(title, price, quantity = 1)
      @price = price  #@total = price   #1.Add items of varying quantities and prices
      @total = @total + price * quantity
      quantity.times do
      @item << item
    end
  end

  def apply_discount  #2.Calculate discounts
    if @discount != 0
      a = @total * @discount/100
      @total = @total - a #refer to stack overlow
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction   #4.VOID the last transaction
    @total -= @price
  end

  def items   #3.Keep track of what's been added to CashRegister
    @item
  end



end
