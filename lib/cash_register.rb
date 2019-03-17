require "pry"
class CashRegister
  attr_accessor :discount, :total, :items, :last_transaction
  def initialize(discount=nil)
    @discount=discount 
    @total=0 
    @items=[]
  end 
  def add_item(title, price, quantity=1)
  total_price=  self.total += price * quantity
  quantity.times do 
  @items << title
  end 
   self.last_transaction = price * quantity
  end 
  def apply_discount
    if discount != 0 
    @total = (@total * ((100.0 - @discount.to_f)/100)).to_i
    "After the discount, the total comes to $#{@total}."
  else discount = 0
    "There is no discount to apply."
    end
  end
   def total
    @total
  end
  def void_last_transaction
    @total=self.total-self.last_transaction 
  end 
 

  
    
  
  
 