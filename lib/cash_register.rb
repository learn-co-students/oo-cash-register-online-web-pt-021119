require "pry"
class CashRegister

attr_accessor :discount, :total, :items, :last_transaction

def initialize(discount = 0)
  @discount = discount
  @total = 0
  @items = []
end


def add_item(title, price, quantity = 1)
  self.total += price * quantity
  quantity.times do
      items << title
    end
  self.last_transaction = price * quantity
end

def apply_discount
  if discount == 0
    return "There is no discount to apply."
  end
  net_discount = 100 - discount
  gross_price = self.total * net_discount
  sale_price = gross_price / 100
  self.total = sale_price
  return "After the discount, the total comes to $#{self.total}."
end

def void_last_transaction
  self.total = self.total - self.last_transaction
end



end
