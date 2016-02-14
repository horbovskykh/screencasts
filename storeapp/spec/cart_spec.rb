require "rspec"
require_relative "../item"
require_relative "../virtual_item"
require_relative "../item_container"
require_relative "../cart"

describe Cart do

  it "adds items into the cart" do
    cart = Cart.new("slava")
	item1 = Item.new ({price: 10, name: "fds"})
	item2 = Item.new ({price: 23, name: "huh"})
	cart.add_items(item1, item2)
	expect(cart.items).to include(item1, item2)
  end

end