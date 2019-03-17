class CashRegister
attr_accessor :total, :discount, :items


def initialize(discount=nil)
   @total = 0
   @discount = discount
   @items = []
end

def add_item(title,price,quantity=1)
  @price = price 
  @title = title
  @quantity = quantity
  @last_amount = @price *@quantity
  @total += (@quantity * @price)
  @quantity.times do
  @items << @title
  end
end

def apply_discount
  if @discount != nil 
	@total = @price - ( (@discount.to_f / 100.0) * @price) 
        "After the discount, the total comes to $#{@total.to_i}."
  else
        "There is no discount to apply."
  end
end

def void_last_transaction
 @total -= @last_amount
end


end
