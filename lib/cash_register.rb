

class CashRegister

attr_accessor :discount, :total, :items, :last_transaction

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
end

def add_item(title, price, quantity = 1)
  self.last_transaction = price * quantity
  self.total += self.last_transaction
  quantity.times { self.items << title }
end

def apply_discount
  self.total = (100 - self.discount) * self.total / 100
  if self.discount == 0
    "There is no discount to apply."
  else "After the discount, the total comes to $#{self.total}."
end
end

def void_last_transaction
    self.total = self.total - self.last_transaction
end


end
