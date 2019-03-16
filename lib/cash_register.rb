class CashRegister
  
  attr_accessor :total, :discount, :last_transaction
  attr_accessor :items
    
  
  def initialize(discount=0)
    @total = 0
    @discount = discount.to_f
    @items =[]
  end
  
  def add_item(item, price, qty = 1)
    @total += price*qty
    
    while qty != 0 do
      @items << item
      qty -= 1
    end
    @last_transaction = @total
  end
  
  def apply_discount
    if discount != 0
      @total -= @total*(@discount/100)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total -= @last_transaction
  end

end
