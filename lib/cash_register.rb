class CashRegister
  attr_accessor :total, :discount, :price, :item
  
   def initialize(discount = 0)
     @total = 0
     @discount = discount
     @item = []
     end 
     
 def add_item(item,price, quantity = 1)
     @price = price 
       @total = @total + price * quantity
        quantity.times do
          @item << item 
  end
 end 
 
 def apply_discount
  if @discount != 0
    a = @total * @discount/100
    @total = @total - a 
  "After the discount, the total comes to $#{@total}."
  
else 
  "There is no discount to apply."
end 
 end 

def void_last_transaction
  @total -= @price 
end 

  def items
  @item 
  end
end 
