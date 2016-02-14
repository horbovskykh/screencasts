require "rspec"
require_relative "../item"
require_relative "../virtual_item"

describe Item do
  
  before(:each) do
    @item = Item.new(price: 200, name: "beer")
  end
   it "calculates price according to a special formula" do
	expect(@item.price).to be == 232
  end
  
  it "return info about object" do
	expect(@item.to_s).to be == "beer:232.0:"
  end
end