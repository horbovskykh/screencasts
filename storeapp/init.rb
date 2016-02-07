require_relative "store_application"

StoreApplication.new
StoreApplication.new
StoreApplication.new

@items = []
@items << VirtualItem.new(price: 10, name: "car") #syntax sugar
@items << RealItem.new({ :weight => 100, :name => "Car", price: 100})
@items << RealItem.new({ :price => 10, :weight => 100, :name => "Phone" })

cart = Cart.new("slava")
cart.add_item VirtualItem.new({ :price => 10, :name => "car" })
cart.add_item RealItem.new({ :weight => 100, :name => "Car", price: 100})
cart.add_item RealItem.new({ :weight => 100, :name => "car", price: 100})

method = "all_cars"
puts cart.send(method)