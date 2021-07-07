class CashRegister
attr_accessor :discount, :total, :items, :last_transaction

def initialize (discount=0)
  @total=0
  @discount=discount
  @items= []
end

def add_item (title, price, quantity=1)
  total_price= price*quantity
  self.total += total_price
  quantity.times do
    items << title
  end
   @last_transaction= price
end


def apply_discount
  if self.discount != 0
  self.discount= self.discount/100.0
  self.total= total- (total * discount)
    "After the discount, the total comes to $#{@total.round}."
  else
    "There is no discount to apply."
  end
end



def void_last_transaction
  self.total = self.total - self.last_transaction
 end 
end
