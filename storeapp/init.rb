require_relative "string"
require_relative "item_container"
require_relative "cart"
require_relative "order"
require_relative "item"
require_relative "real_item"
require_relative "virtual_item"

@items = []
@items << VirtualItem.new({ :price => 10, :name => "car" })
@items << RealItem.new({ :weight => 100, :name => "Car", price: 100})
@items << RealItem.new({ :price => 10, :weight => 100, :name => "Phone" })

cart = Cart.new("slava")
cart.add_item VirtualItem.new({ :price => 10, :name => "car" })
cart.add_item RealItem.new({ :weight => 100, :name => "Car", price: 100})
cart.add_item RealItem.new({ :weight => 100, :name => "car", price: 100})
cart.add_item RealItem.new({ :weight => 100, :name => "caar", price: 100})


p cart.all_caars
p cart.all_Cars