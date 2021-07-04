class CashRegister

attr_accessor :total, :discount, :items, :final_transaction

def initialize(discount = 0)
@total = 0
@discount = discount
@items = []
end

def add_item(item, price, quantity = 1)
  if quantity == 0
  @items.push(item)
  @total = @total + price
  else
    @total = @total + price * quantity
    @final_transaction = @total
    @total
    i = 0
    while i<quantity
  @items << item
  i+=1
end
  end
end

def apply_discount
  if @discount == 0
    return "There is no discount to apply."
  else
  percentage = @discount.to_f/100
  @total = @total - percentage * @total
  @total.to_i
  return "After the discount, the total comes to $#{@total.to_i}."
  end
end

def items
@items
end

def void_last_transaction
  @total -= @final_transaction
end


end
