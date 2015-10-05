class Item
  def initialize
    @price = 30  
  end
=begin
  def price
    @price #rand(100)
  end
  
  def price=(price_value)
    @price = price_value
  end
#getters and setters
=end 
  
  attr_reader :price, :weight
  attr_writer :price, :weight
#  attr_accessor :price, :weight  
end

item1 = Item.new
item1.price= 10
puts item1.price

item1.weight = 10
puts item1.weight