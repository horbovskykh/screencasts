require_relative "item_container"
require_relative "cart"
require_relative "order"
require_relative "item"
require_relative "real_item"
require_relative "virtual_item"

@items = []
@items << VirtualItem.new({ :price => 10, :name => "Car" })
@items << RealItem.new({ :weight => 100, :name => "Car", price: 100})
@items << RealItem.new({ :price => 10, :weight => 100, :name => "Phone" })
