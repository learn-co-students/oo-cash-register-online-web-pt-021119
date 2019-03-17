require 'pry'

class CashRegister
  attr_accessor :total, :discount, :cart, :cart_info
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount 
    @cart = []
    @cart_info = {}
  end 
  
  def add_item(title, price, quantity=nil)
   if quantity != nil 
    cart_info[title] = price * quantity 
    self.total += price * quantity 
    #adds to array the quantity of each title 
      i = 0 
      while i < quantity 
        self.cart << title
        i += 1 
      end
    else 
     cart_info[title] = price 
     self.total += price 
     self.cart << title 
    end 
  end 
 
  
  def apply_discount
    if discount == nil
      "There is no discount to apply."
    else 
      discount_percentage = (100 - discount)/100.to_f
      self.total *= discount_percentage
     "After the discount, the total comes to $#{self.total.to_i}."
    end 
  end 
  
  def items
    self.cart 
  end 
  
  def void_last_transaction 
    self.total -= cart_info.values.last 
  end 
end 
