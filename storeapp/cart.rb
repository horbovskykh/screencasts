class Cart
  
  attr_reader :items
  
  include ItemContainer
  
  def initialize(owner)
    @items = [] #@items = Array.new
	@owner = owner
  end
  
  def add_items (*items)
    @items += items
  end
  
  def save_to_file
    File.open("#{@owner}_cart.txt", "w") do |f|
	  @items.each { |i| f.puts i } #puts convert i to string  using general method to_s
	end
  end
  
  def read_from_file
    begin
	  File.readlines("#{@owner}_cart.txt").each { |i| @items << i.to_real_item }
    rescue Errno::ENOENT
	  File.open("#{@owner}_cart.txt", "w")
	  puts "File #{@owner}_cart.txt created"
	end
	#@items.uniq!
  end
 
end