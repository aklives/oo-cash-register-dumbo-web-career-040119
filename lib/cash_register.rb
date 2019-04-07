require 'pry'
class CashRegister
  
  attr_accessor :total, :discount, :title, :price, :quantity
  
  def initialize(discount=0)
    @total = 0 
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity=1)
    quantity.times do
      @items << title
    end
    @title = title
    @price = price
    @quantity = quantity
    @total += price * quantity
  end
  
  def void_last_transaction
    @total -= @price
  end
  
  def apply_discount
    if discount > 0
      self.total = @total * (100.0 - discount)/100
      "After the discount, the total comes to $#{(self.total).round}."
    else
      "There is no discount to apply."
    end
  end
  
  def items 
    @items
  end
  
  
  
end



