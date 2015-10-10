require_relative "cart"
require_relative "item"

item1 = Item.new({ :price => 10, :weight => 100, :name => "Car" })
item2 = Item.new({ :weight => 100, :name => "Car" })
cart = Cart.new
cart.add_item(item1)
cart.add_item(item2)

#p cart.items

#cart.remove_item

p cart.items

cart.validate
cart.delete_invalid_item

p cart.items

#item = Item.new({ :price => 10, :weight => 100, :name => "Car" })
#item.info { |attr| puts attr} 