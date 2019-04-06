require 'pry'
class CashRegister
  
  attr_accessor :total, :discount, :title, :price, :quantity
  
  def initialize(discount=0)
    @total = 0 
    @discount = discount
    ITEMS = []
  end
  
  
  
  def add_item(title, price, quantity=1)
    ITEMS << title * quantity
    @title = title
    @price = price
    @quantity = quantity
    @total += price * quantity
  end
  
  def void_last_transaction
    self.total -= @price
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
    ITEMS 
  end
  
  
  
end



