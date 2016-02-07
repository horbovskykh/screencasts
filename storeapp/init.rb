require_relative "string"
require_relative "item_container"
require_relative "cart"
require_relative "order"
require_relative "item"
require_relative "real_item"
require_relative "virtual_item"

@items = []
@items << VirtualItem.new(price: 10, name: "car") #syntax sugar
@items << RealItem.new({ :weight => 100, :name => "Car", price: 100})
@items << RealItem.new({ :price => 10, :weight => 100, :name => "Phone" })

cart = Cart.new("slava")
cart.add_item VirtualItem.new({ :price => 10, :name => "car" })
cart.add_item RealItem.new({ :weight => 100, :name => "Car", price: 100})
cart.add_item RealItem.new({ :weight => 100, :name => "car", price: 100})
cart.add_item RealItem.new({ :weight => 100, :name => "caar", price: 100})


puts cart.all_caars
p cart.all_Cars
puts cart.kind_of?(Cart)
puts @items[0].class == (Item)
puts cart.respond_to?(:save_to_file) #check availability of method in object
puts @items[0].send (:price) #send can be also used for private methods (for example, tax)