
class CashRegister

    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item(title, price, quantity=1)
        self.last_transaction = price * quantity
        self.total += self.last_transaction
        
        quantity.times do 
            @items << title
        end
    end

    def apply_discount
        if discount != 0
            @total = total - (total * (discount.to_f/100)).to_i
            p "After the discount, the total comes to $#{total}."
        else
            p "There is no discount to apply."
        end
    end

    def void_last_transaction
      self.total -= self.last_transaction
    end

end