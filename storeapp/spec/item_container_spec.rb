require "rspec"
require_relative "../item"
require_relative "../virtual_item"
require_relative "../item_container"

class ItemBox
  include ItemContainer
  
   def initialize
     @items = []
   end
end

describe ItemContainer do
  before(:each) do
    @box = ItemBox.new
	@item1 = Item.new(price: 10, name: "service")
    @item2 = Item.new({ :weight => 100, :name => "Car", price: 100})
  end

  it "adds item into container" do
    @box.add_item (@item1)
	@box.add_item (@item2)
	expect(@box.items.size).to eq(2)
  end
  
  it "delete item from container" do
    @box.add_item (@item1)
	@box.add_item (@item2)
    expect(@box.remove_item).to be(@item2)
	@box.remove_item
	expect(@box.items).to be_empty
  end
  
  it "raise error" do
    expect{@box.add_item("sdsfs")}.to raise_error(NoMethodError)
  end


end