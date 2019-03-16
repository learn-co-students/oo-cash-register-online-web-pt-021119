class CashRegister 
  
  attr_accessor :total, :discount
  attr_reader :items, :transactions 
  
  def initialize(discount = 0) 
    @total = 0 
    @discount = discount
    @items = []
    @transactions = []
  end 
  
  def add_item(item, price, quantity = 1)
    self.total += (price*quantity)
    quantity.times do 
      @items.push(item) 
    end 
    @transactions.push(price*quantity)
  end 
  
  def apply_discount 
    if @discount > 0 
      @total -= @total*(@discount.to_f/100) 
      return "After the discount, the total comes to $#{@total.to_i}."
    else 
      return "There is no discount to apply."
    end 
  end 
  
  def void_last_transaction 
    @total -= @transactions.last 
  end 



end 
