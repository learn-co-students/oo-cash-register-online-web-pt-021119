require 'pry'
class CashRegister
    attr_accessor :total, :discount, :prev_total, :items

    def initialize(disc=0)
        @total=0
        @discount=disc.to_f
        @items=[]
    end

    def add_item(item,price,qty=1)
        @prev_total=total
        @total+=(price*qty)
        qty.times {@items<<item}
    end

    def apply_discount
        # binding.pry
        @total=@total*(1-@discount/100)
        @total==0 ? "There is no discount to apply." : "After the discount, the total comes to $#{@total.to_i}."
    end

    def void_last_transaction
        @total=@prev_total
    end
end
