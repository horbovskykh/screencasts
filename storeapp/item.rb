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
  
<<<<<<< HEAD
  attr_reader :price, :weight
=======
#  attr_reader :price, :weight
>>>>>>> 083d9faaf2b8e9b6d6d82f686fb7bb9fdde301c8
  attr_writer :price, :weight
#  attr_accessor :price, :weight  
end

item1 = Item.new
item1.price= 10
puts item1.price

item1.weight = 10
puts item1.weight