require_relative "store_application"
StoreApplication.config do |app|

  app.name = "My store"
  app.environment = :test
  
  app.admin do |admin|
    admin.email = "admin@mystore.com"
	admin.login = "admin"
	admin.send_info_emails_on :mondays
  end
end

unless StoreApplication.frozen?
  StoreApplication.name = "my name"
end

p StoreApplication.environment
p StoreApplication.name
p StoreApplication::Admin.email
p StoreApplication::Admin.login

@items = []
@items << VirtualItem.new(price: 10, name: "car") #syntax sugar
@items << RealItem.new({ :weight => 100, :name => "Car", price: 100})
@items << RealItem.new({ :price => 10, :weight => 100, :name => "Phone" })

cart = Cart.new("slava")
cart.add_item VirtualItem.new({ :price => 10, :name => "car" })
cart.add_item RealItem.new({ :weight => 100, :name => "Car", price: 100})
cart.add_item RealItem.new({ :weight => 100, :name => "car", price: 100})