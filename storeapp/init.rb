require_relative "cart"
require_relative "item"
require_relative "real_item"
require_relative "virtual_item"

item1 = VirtualItem.new({ :price => 10, :name => "Car" })
item2 = RealItem.new({ :price => 10, :weight => 100, :name => "Car" })
cart = Cart.new
cart.add_item(item1)
cart.add_item(item2)


p cart.items

cart.validate
cart.delete_invalid_item

p cart.items

p item1.respond_to?(:weight)
p item2.respond_to?(:weight)

puts Item.discount
puts item1.price
puts item1.real_price